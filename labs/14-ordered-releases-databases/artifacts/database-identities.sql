-- Review and substitute names, then execute as the database's Microsoft Entra administrator.
-- The target database is provisioned separately; do not run this in master.
-- Phase 1: grant the dedicated deployment identity schema migration rights.
CREATE USER [REPLACE_MIGRATION_IDENTITY_DISPLAY_NAME] FROM EXTERNAL PROVIDER;
GRANT CREATE TABLE TO [REPLACE_MIGRATION_IDENTITY_DISPLAY_NAME];
GRANT ALTER, REFERENCES ON SCHEMA::dbo TO [REPLACE_MIGRATION_IDENTITY_DISPLAY_NAME];
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO [REPLACE_MIGRATION_IDENTITY_DISPLAY_NAME];
GO
-- Stop here and apply InitialTodos using migrate.ps1 with the migration identity.
-- Phase 2: after the table exists, grant the runtime identity only application-table access.
IF OBJECT_ID(N'dbo.Todos', N'U') IS NULL
    THROW 50001, 'Apply the reviewed migration before granting runtime table permissions.', 1;
CREATE USER [REPLACE_API_MANAGED_IDENTITY_DISPLAY_NAME] FROM EXTERNAL PROVIDER;
GRANT SELECT, INSERT, UPDATE ON OBJECT::dbo.Todos TO [REPLACE_API_MANAGED_IDENTITY_DISPLAY_NAME];
-- Repeat phase 2 for the staging managed identity if an S1 slot is used.
-- The runtime identity does not receive DDL rights or write access to __EFMigrationsHistory.
