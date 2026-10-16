using System.Net;
using System.Net.Http.Json;
using DevOps.Api;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Xunit;

namespace DevOps.Sql.Tests;

public sealed class SqlFactory(string connectionString) : WebApplicationFactory<Program>
{
    protected override void ConfigureWebHost(IWebHostBuilder builder)
    {
        builder.UseEnvironment("Testing");
        builder.ConfigureServices(services =>
        {
            services.RemoveAll<DbContextOptions<TodoDbContext>>();
            services.RemoveAll<DbContextOptions>();
            services.RemoveAll<IDbContextOptionsConfiguration<TodoDbContext>>();
            services.RemoveAll<TodoDbContext>();
            services.AddDbContext<SqlServerTodoDbContext>(options => options.UseSqlServer(connectionString));
            services.AddScoped<TodoDbContext>(provider => provider.GetRequiredService<SqlServerTodoDbContext>());
        });
    }
}

public sealed class SqlServerTests
{
    // These opt-in tests fail if the runner did not start the isolated local SQL fixture.
    private static string AdminConnection
    {
        get
        {
            var value = Environment.GetEnvironmentVariable("AZ400_SQL_TEST_CONNECTION")
                ?? throw new InvalidOperationException("Run samples/Test-Containers.ps1 -SqlServer; no SQL tests are silently skipped.");
            if (!System.Text.RegularExpressions.Regex.IsMatch(new SqlConnectionStringBuilder(value).DataSource, @"^127\.0\.0\.1,[0-9]+$"))
                throw new InvalidOperationException("SQL fixture tests refuse every non-loopback endpoint; Azure SQL is never contacted.");
            return value;
        }
    }

    [Theory]
    [InlineData("migrated", HttpStatusCode.OK)]
    [InlineData("unmigrated", HttpStatusCode.ServiceUnavailable)]
    [InlineData("history-denied", HttpStatusCode.ServiceUnavailable)]
    [InlineData("data-denied", HttpStatusCode.ServiceUnavailable)]
    public async Task RuntimeIdentityReadinessRequiresMigratedSchemaAndNarrowReadPermissions(string scenario, HttpStatusCode expected)
    {
        var suffix = Guid.NewGuid().ToString("N");
        var databaseName = "az400_" + suffix;
        var loginName = "runtime_" + suffix;
        var migrationLogin = "migrate_" + suffix;
        var password = "A1!" + Guid.NewGuid().ToString("N");
        var admin = new SqlConnectionStringBuilder(AdminConnection) { InitialCatalog = "master" };
        await Execute(admin.ConnectionString, $"CREATE DATABASE [{databaseName}];");
        await Execute(admin.ConnectionString, $"CREATE LOGIN [{loginName}] WITH PASSWORD='{password}'; CREATE LOGIN [{migrationLogin}] WITH PASSWORD='{password}';");
        try
        {
            var databaseAdmin = new SqlConnectionStringBuilder(AdminConnection) { InitialCatalog = databaseName };
            await Execute(databaseAdmin.ConnectionString, $"CREATE USER [{migrationLogin}] FOR LOGIN [{migrationLogin}];");
            var grantScript = await File.ReadAllTextAsync(Path.Combine(AppContext.BaseDirectory, "database-identities.sql"));
            var grants = System.Text.RegularExpressions.Regex.Matches(grantScript, @"GRANT[^;]+ TO \[REPLACE_MIGRATION_IDENTITY_DISPLAY_NAME\];");
            Assert.Equal(3, grants.Count);
            foreach (System.Text.RegularExpressions.Match grant in grants)
                await Execute(databaseAdmin.ConnectionString, grant.Value.Replace("REPLACE_MIGRATION_IDENTITY_DISPLAY_NAME", migrationLogin, StringComparison.Ordinal));
            var migration = new SqlConnectionStringBuilder(databaseAdmin.ConnectionString)
            {
                UserID = migrationLogin, Password = password, IntegratedSecurity = false, Pooling = false
            };
            await using var db = new SqlServerTodoDbContext(new DbContextOptionsBuilder<SqlServerTodoDbContext>().UseSqlServer(migration.ConnectionString).Options);
            // Same idempotent EF migration that the immutable release bundle applies.
            if (scenario != "unmigrated")
            {
                await db.Database.MigrateAsync();
                await db.Database.MigrateAsync();
                Assert.Empty(await db.Database.GetPendingMigrationsAsync());
            }
            await Execute(databaseAdmin.ConnectionString, $"CREATE USER [{loginName}] FOR LOGIN [{loginName}];");
            if (scenario != "unmigrated")
            {
                if (scenario != "data-denied") await Execute(databaseAdmin.ConnectionString, $"GRANT SELECT, INSERT, UPDATE ON OBJECT::dbo.Todos TO [{loginName}];");
                if (scenario != "history-denied") await Execute(databaseAdmin.ConnectionString, $"GRANT SELECT ON OBJECT::dbo.__EFMigrationsHistory TO [{loginName}];");
            }
            var runtime = new SqlConnectionStringBuilder(databaseAdmin.ConnectionString)
            {
                UserID = loginName, Password = password, IntegratedSecurity = false, Pooling = false
            };
            await using var factory = new SqlFactory(runtime.ConnectionString);
            using var client = factory.CreateClient();
            Assert.Equal(HttpStatusCode.OK, (await client.GetAsync("/health/live")).StatusCode);
            Assert.Equal(expected, (await client.GetAsync("/health/ready")).StatusCode);
            if (scenario == "migrated")
            {
                var response = await client.PostAsJsonAsync("/todos", new CreateTodo("SQL least privilege"));
                Assert.Equal(HttpStatusCode.Created, response.StatusCode);
                Assert.Single((await client.GetFromJsonAsync<Todo[]>("/todos"))!);
                await using var runtimeConnection = new SqlConnection(runtime.ConnectionString);
                await runtimeConnection.OpenAsync();
                await using var permission = runtimeConnection.CreateCommand();
                permission.CommandText = "SELECT HAS_PERMS_BY_NAME('dbo.__EFMigrationsHistory','OBJECT','UPDATE'), HAS_PERMS_BY_NAME('dbo','SCHEMA','ALTER');";
                await using var reader = await permission.ExecuteReaderAsync();
                Assert.True(await reader.ReadAsync());
                Assert.Equal(0, reader.GetInt32(0));
                Assert.Equal(0, reader.GetInt32(1));
            }
        }
        finally
        {
            SqlConnection.ClearAllPools();
            await Execute(admin.ConnectionString, $"ALTER DATABASE [{databaseName}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE; DROP DATABASE [{databaseName}]; DROP LOGIN [{loginName}]; DROP LOGIN [{migrationLogin}];");
        }
    }

    private static async Task Execute(string connectionString, string sql)
    {
        await using var connection = new SqlConnection(connectionString);
        await connection.OpenAsync();
        await using var command = connection.CreateCommand();
        command.CommandTimeout = 60;
        command.CommandText = sql;
        await command.ExecuteNonQueryAsync();
    }
}
