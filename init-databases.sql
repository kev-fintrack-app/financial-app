-- This script runs ONCE when the PostgreSQL container is created for the first time.
-- It creates a separate database for each microservice.
-- Each service gets its own isolated database to enforce bounded contexts.

CREATE DATABASE auth_db;
CREATE DATABASE transaction_db;
CREATE DATABASE budget_db;
CREATE DATABASE reporting_db;
CREATE DATABASE notification_db;
CREATE DATABASE sync_db;
