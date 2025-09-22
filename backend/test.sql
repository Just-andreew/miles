-- Create a test database
CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

-- Create a test table
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);

-- Insert sample rows
INSERT INTO users (name, email) VALUES
('Andrew', 'andrew@example.com'),
('Jane', 'jane@example.com');

-- Show data
SELECT * FROM users;

