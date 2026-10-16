using Azure.Identity;
using Azure.Monitor.OpenTelemetry.AspNetCore;
using DevOps.Api;
using Microsoft.EntityFrameworkCore;
using Microsoft.FeatureManagement;
using OpenTelemetry.Resources;

var builder = WebApplication.CreateBuilder(args);
var appConfigurationEndpoint = builder.Configuration["AppConfiguration:Endpoint"];
if (!string.IsNullOrWhiteSpace(appConfigurationEndpoint))
{
    builder.Configuration.AddAzureAppConfiguration(options => options
        .Connect(new Uri(appConfigurationEndpoint), new DefaultAzureCredential())
        .Select("DevOps:*")
        .UseFeatureFlags());
    builder.Services.AddAzureAppConfiguration();
}
builder.Services.AddFeatureManagement();
builder.Services.AddProblemDetails();
var sqlServer = string.Equals(builder.Configuration["Database:Provider"], "SqlServer", StringComparison.OrdinalIgnoreCase);
var connectionString = builder.Configuration.GetConnectionString("Todos") ?? "Data Source=todos.db";
if (sqlServer)
{
    builder.Services.AddDbContext<SqlServerTodoDbContext>(options => options.UseSqlServer(connectionString,
        sql => sql.EnableRetryOnFailure(3)));
    builder.Services.AddScoped<TodoDbContext>(services => services.GetRequiredService<SqlServerTodoDbContext>());
}
else
{
    builder.Services.AddDbContext<TodoDbContext>(options => options.UseSqlite(connectionString));
}
var telemetry = builder.Services.AddOpenTelemetry()
    .ConfigureResource(resource => resource.AddService("az400-todo-api"))
    .WithTracing(tracing => tracing.AddSource(ApiTelemetry.SourceName))
    .WithMetrics(metrics => metrics.AddMeter(ApiTelemetry.SourceName));
if (!string.IsNullOrWhiteSpace(builder.Configuration["APPLICATIONINSIGHTS_CONNECTION_STRING"]))
{
    telemetry.UseAzureMonitor(options =>
    {
        if (builder.Configuration.GetValue<bool>("Telemetry:UseEntra")) options.Credential = new DefaultAzureCredential();
    });
}

var app = builder.Build();
app.UseExceptionHandler();
if (!string.IsNullOrWhiteSpace(appConfigurationEndpoint)) app.UseAzureAppConfiguration();
// Local/test schema creation is intentionally separate from the ordered SQL release lane.
if (!sqlServer && (app.Environment.IsDevelopment() || app.Environment.IsEnvironment("Testing")))
{
    using var scope = app.Services.CreateScope();
    await scope.ServiceProvider.GetRequiredService<TodoDbContext>().Database.EnsureCreatedAsync();
}
app.MapGet("/health/live", () => Results.Ok(new { status = "live" }));
app.MapGet("/health/ready", async (TodoDbContext db, CancellationToken cancellation) =>
{
    try
    {
        var ready = await db.Database.CanConnectAsync(cancellation);
        if (ready) _ = await db.Todos.AsNoTracking().AnyAsync(cancellation);
        if (ready && sqlServer) ready = !(await db.Database.GetPendingMigrationsAsync(cancellation)).Any();
        return ready ? Results.Ok(new { status = "ready" }) : Results.StatusCode(503);
    }
    catch (Exception exception) when (exception is not OperationCanceledException)
    {
        app.Logger.LogWarning("Readiness check failed ({ExceptionType})", exception.GetType().Name);
        return Results.StatusCode(503);
    }
});
app.MapGet("/version", () => Results.Ok(new { version = typeof(Program).Assembly.GetName().Version?.ToString(),
    revision = app.Configuration["Build:Revision"] ?? "local" }));
app.MapGet("/todos", async (TodoDbContext db, CancellationToken cancellation) =>
    Results.Ok(await db.Todos.AsNoTracking().OrderBy(todo => todo.Id).ToArrayAsync(cancellation)));
app.MapGet("/todos/{id:int}", async (int id, TodoDbContext db, CancellationToken cancellation) =>
    await db.Todos.FindAsync([id], cancellation) is { } todo ? Results.Ok(todo) : Results.NotFound());
app.MapPost("/todos", async (CreateTodo request, TodoDbContext db, IFeatureManager features, CancellationToken cancellation) =>
{
    if (!await features.IsEnabledAsync("TodoWrites")) return Results.StatusCode(503);
    var error = TodoRules.ValidateTitle(request.Title);
    if (error is not null) return Results.ValidationProblem(new Dictionary<string, string[]> { ["title"] = [error] });
    using var activity = ApiTelemetry.Activities.StartActivity("todo.create");
    var todo = new Todo { Title = request.Title!.Trim() };
    db.Todos.Add(todo);
    await db.SaveChangesAsync(cancellation);
    ApiTelemetry.Created.Add(1);
    return Results.Created($"/todos/{todo.Id}", todo);
});
app.MapPut("/todos/{id:int}/complete", async (int id, TodoDbContext db, IFeatureManager features, CancellationToken cancellation) =>
{
    if (!await features.IsEnabledAsync("TodoWrites")) return Results.StatusCode(503);
    var todo = await db.Todos.FindAsync([id], cancellation);
    if (todo is null) return Results.NotFound();
    todo.Completed = true;
    await db.SaveChangesAsync(cancellation);
    return Results.NoContent();
});
app.Run();
public partial class Program;
