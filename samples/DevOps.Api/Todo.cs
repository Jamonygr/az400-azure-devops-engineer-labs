using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Diagnostics.Metrics;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace DevOps.Api;

public sealed class Todo
{
    public int Id { get; set; }
    [MaxLength(TodoRules.MaximumTitleLength)] public required string Title { get; set; }
    public bool Completed { get; set; }
}
public sealed record CreateTodo(string? Title);
public static class TodoRules
{
    public const int MaximumTitleLength = 200;
    public static string? ValidateTitle(string? title) => string.IsNullOrWhiteSpace(title)
        ? "A non-blank title is required."
        : title.Trim().Length > MaximumTitleLength ? "The title must contain at most 200 characters." : null;
}
public class TodoDbContext(DbContextOptions options) : DbContext(options)
{
    public DbSet<Todo> Todos => Set<Todo>();
    protected override void OnModelCreating(ModelBuilder builder)
    {
        builder.Entity<Todo>().Property(todo => todo.Title).HasMaxLength(TodoRules.MaximumTitleLength).IsRequired();
    }
}
public sealed class SqlServerTodoDbContext(DbContextOptions<SqlServerTodoDbContext> options) : TodoDbContext(options);
public sealed class SqlServerTodoDesignFactory : IDesignTimeDbContextFactory<SqlServerTodoDbContext>
{
    public SqlServerTodoDbContext CreateDbContext(string[] args)
    {
        var connection = Environment.GetEnvironmentVariable("ConnectionStrings__Todos")
            ?? "Server=localhost;Database=Az400Todos;Integrated Security=true;Encrypt=true;TrustServerCertificate=false";
        return new SqlServerTodoDbContext(new DbContextOptionsBuilder<SqlServerTodoDbContext>().UseSqlServer(connection).Options);
    }
}
public static class ApiTelemetry
{
    public const string SourceName = "Az400.Todos";
    // Only a nonsecret commit SHA is copied from the gate header into telemetry.
    public static void TagRelease(Activity? activity, string? marker)
    {
        if (marker is { Length: 40 } && marker.All(character => character is >= '0' and <= '9' or >= 'a' and <= 'f'))
            activity?.SetTag("az400.release", marker);
    }
    public static readonly ActivitySource Activities = new(SourceName);
    public static readonly Meter Meter = new(SourceName);
    public static readonly Counter<long> Created = Meter.CreateCounter<long>("todos.created", "{todo}");
}
