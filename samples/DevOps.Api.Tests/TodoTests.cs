using System.Net;
using System.Net.Http.Json;
using System.Diagnostics;
using System.Collections.Concurrent;
using DevOps.Api;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Xunit;

namespace DevOps.Api.Tests;

public sealed class TitleTests
{
    [Theory]
    [InlineData(null)] [InlineData("")] [InlineData("   ")]
    public void RejectsMissingTitles(string? title) => Assert.NotNull(TodoRules.ValidateTitle(title));
    [Fact] public void EnforcesTrimmedBoundary()
    {
        Assert.Null(TodoRules.ValidateTitle(" " + new string('x', 200) + " "));
        Assert.NotNull(TodoRules.ValidateTitle(new string('x', 201)));
    }
}

public sealed class SqlMigrationTests
{
    [Fact] public void SqlServerMigrationProducesAnIdempotentSchemaWithoutAConnection()
    {
        using var database = new SqlServerTodoDesignFactory().CreateDbContext([]);
        Assert.Equal("Microsoft.EntityFrameworkCore.SqlServer", database.Database.ProviderName);
        var script = database.GetService<IMigrator>().GenerateScript(options: MigrationsSqlGenerationOptions.Idempotent);
        Assert.Contains("CREATE TABLE [Todos]", script);
        Assert.Contains("nvarchar(200)", script);
        Assert.Contains("IF NOT EXISTS", script);
    }
}

public sealed class ApiFactory(bool writes = true, string environment = "Testing") : WebApplicationFactory<Program>
{
    private readonly string database = Path.Combine(Path.GetTempPath(), $"az400-tests-{Guid.NewGuid():N}.db");
    protected override void ConfigureWebHost(IWebHostBuilder builder)
    {
        builder.UseEnvironment(environment);
        builder.ConfigureAppConfiguration((_, configuration) => configuration.AddInMemoryCollection(new Dictionary<string, string?>
        {
            ["Database:Provider"] = "Sqlite", ["ConnectionStrings:Todos"] = $"Data Source={database};Pooling=False",
            ["FeatureManagement:TodoWrites"] = writes.ToString(),
            ["AppConfiguration:Endpoint"] = "", ["APPLICATIONINSIGHTS_CONNECTION_STRING"] = ""
        }));
        // Minimal-host configuration callbacks run after Program reads the connection string.
        // Replace registration options explicitly so every test owns its database file.
        builder.ConfigureServices(services =>
        {
            services.RemoveAll<DbContextOptions<TodoDbContext>>();
            services.RemoveAll<DbContextOptions>();
            services.RemoveAll<IDbContextOptionsConfiguration<TodoDbContext>>();
            services.RemoveAll<TodoDbContext>();
            services.AddDbContext<TodoDbContext>(options => options.UseSqlite($"Data Source={database};Pooling=False"));
        });
    }
    protected override void Dispose(bool disposing)
    {
        base.Dispose(disposing);
        if (disposing && File.Exists(database)) File.Delete(database);
    }
}

public sealed class HttpTests
{
    [Fact] public async Task HealthAndVersionAreAvailable()
    {
        await using var factory = new ApiFactory();
        using var client = factory.CreateClient();
        foreach (var route in new[] { "/health/live", "/health/ready", "/version" })
            Assert.Equal(HttpStatusCode.OK, (await client.GetAsync(route)).StatusCode);
    }
    [Fact] public async Task CreatesReadsAndCompletesTodo()
    {
        await using var factory = new ApiFactory();
        using var client = factory.CreateClient();
        var created = await client.PostAsJsonAsync("/todos", new CreateTodo("  release safely  "));
        Assert.Equal(HttpStatusCode.Created, created.StatusCode);
        var todo = await created.Content.ReadFromJsonAsync<Todo>();
        Assert.NotNull(todo);
        Assert.Equal("release safely", todo.Title);
        Assert.False(todo.Completed);
        Assert.Equal($"/todos/{todo.Id}", created.Headers.Location?.ToString());
        Assert.Equal(HttpStatusCode.NoContent, (await client.PutAsync($"/todos/{todo.Id}/complete", null)).StatusCode);
        var loaded = await client.GetFromJsonAsync<Todo>($"/todos/{todo.Id}");
        Assert.True(loaded!.Completed);
        Assert.Single((await client.GetFromJsonAsync<Todo[]>("/todos"))!);
    }
    [Fact] public async Task InvalidAndMissingResourcesHaveExplicitResponses()
    {
        await using var factory = new ApiFactory();
        using var client = factory.CreateClient();
        Assert.Equal(HttpStatusCode.BadRequest, (await client.PostAsJsonAsync("/todos", new CreateTodo(" "))).StatusCode);
        Assert.Equal(HttpStatusCode.BadRequest, (await client.PostAsJsonAsync("/todos", new CreateTodo(new string('x', 201)))).StatusCode);
        Assert.Equal(HttpStatusCode.NotFound, (await client.GetAsync("/todos/9123")).StatusCode);
        Assert.Equal(HttpStatusCode.NotFound, (await client.PutAsync("/todos/9123/complete", null)).StatusCode);
        Assert.Empty((await client.GetFromJsonAsync<Todo[]>("/todos"))!);
    }
    [Fact] public async Task DisabledFlagRejectsWritesWhileReadsRemainHealthy()
    {
        await using var factory = new ApiFactory(false);
        using var client = factory.CreateClient();
        Assert.Equal(HttpStatusCode.ServiceUnavailable, (await client.PostAsJsonAsync("/todos", new CreateTodo("disabled"))).StatusCode);
        Assert.Equal(HttpStatusCode.ServiceUnavailable, (await client.PutAsync("/todos/1/complete", null)).StatusCode);
        Assert.Equal(HttpStatusCode.OK, (await client.GetAsync("/todos")).StatusCode);
    }
    [Fact] public async Task ProductionDoesNotCreateSchemaAndReadinessFailsClosed()
    {
        await using var factory = new ApiFactory(environment: "Production");
        using var client = factory.CreateClient();
        Assert.Equal(HttpStatusCode.OK, (await client.GetAsync("/health/live")).StatusCode);
        Assert.Equal(HttpStatusCode.ServiceUnavailable, (await client.GetAsync("/health/ready")).StatusCode);
    }
    [Fact] public async Task CreatesTraceSpanForTodoWrite()
    {
        var spans = new ConcurrentQueue<Activity>();
        using var listener = new ActivityListener
        {
            ShouldListenTo = source => source.Name == ApiTelemetry.SourceName,
            Sample = (ref ActivityCreationOptions<ActivityContext> _) => ActivitySamplingResult.AllDataAndRecorded,
            ActivityStopped = spans.Enqueue
        };
        ActivitySource.AddActivityListener(listener);
        await using var factory = new ApiFactory();
        using var client = factory.CreateClient();
        Assert.Equal(HttpStatusCode.Created, (await client.PostAsJsonAsync("/todos", new CreateTodo("trace"))).StatusCode);
        Assert.Contains(spans, span => span.OperationName == "todo.create" && span.TraceId != default);
    }
}
