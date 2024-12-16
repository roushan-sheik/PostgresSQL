/* 
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions.
*/

-- Table-Level Events:
	-- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events:
	-- Database Startup, Database Shutdown, Connection Start and End, etc.

-- Syntax Example:
-- CREATE TRIGGER trigger_name 
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW]
-- EXECUTE FUNCTION function_name();

-- Create the `my_users` table
CREATE TABLE my_users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    user_email VARCHAR(30)
);

-- Insert sample data into the `my_users` table
INSERT INTO my_users (user_name, user_email) VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Michael Johnson', 'michael.j@example.com'),
    ('Emily Davis', 'emily.davis@example.com'),
    ('Daniel Wilson', 'daniel.w@example.com'),
    ('Sarah Brown', 'sarah.brown@example.com'),
    ('David Miller', 'david.miller@example.com'),
    ('Olivia Taylor', 'olivia.taylor@example.com'),
    ('James Anderson', 'james.anderson@example.com'),
    ('Sophia Martinez', 'sophia.martinez@example.com'),
    ('Ethan Clark', 'ethan.clark@example.com'),
    ('Isabella Lopez', 'isabella.lopez@example.com'),
    ('Benjamin White', 'benjamin.white@example.com'),
    ('Charlotte Harris', 'charlotte.harris@example.com'),
    ('Matthew Young', 'matthew.young@example.com');

-- View data in the `my_users` table
SELECT * FROM my_users;

-- Create the `deleted_user_audit` table
CREATE TABLE deleted_user_audit (
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);

-- View data in the `deleted_user_audit` table
SELECT * FROM deleted_user_audit;

-- Trigger function to save deleted user information
CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_user_audit VALUES (OLD.user_name, now());
        RAISE NOTICE 'Deleted user audit log created';
        RETURN OLD;
    END;
$$;

-- Create a trigger to invoke the function before a DELETE operation
CREATE OR REPLACE TRIGGER save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW 
EXECUTE FUNCTION save_deleted_user();

-- Delete a user from the `my_users` table
DELETE FROM my_users WHERE user_email = 'john.doe@example.com';

-- View the audit log for deleted users
SELECT * FROM deleted_user_audit;
