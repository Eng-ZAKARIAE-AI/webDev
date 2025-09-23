-- AeroGuard Database Initialization Script
-- This script runs when the PostgreSQL container starts for the first time

-- Create database if it doesn't exist (handled by POSTGRES_DB env var)
-- Create user if it doesn't exist (handled by POSTGRES_USER env var)

-- Set timezone
SET timezone = 'UTC';

-- Create extensions if needed
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Grant necessary permissions
GRANT ALL PRIVILEGES ON DATABASE aeroguard_db TO aeroguard_user;
GRANT ALL PRIVILEGES ON SCHEMA public TO aeroguard_user;

-- The actual tables will be created by Drizzle migrations

