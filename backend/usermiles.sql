-- Make sure you’re using your project DB
CREATE DATABASE IF NOT EXISTS miles_db;

-- Create a new MySQL user (replace with your own password)
CREATE USER 'miles_user'@'localhost' IDENTIFIED BY 'Solitei@Sql15260';

-- Grant privileges on your DB
GRANT ALL PRIVILEGES ON miles_db.* TO 'miles_user'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

