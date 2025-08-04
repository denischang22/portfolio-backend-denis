-- Create table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT UNIQUE
);

-- Insert
INSERT INTO users (name, email) VALUES ('Denis', 'denis@example.com');

-- Select
SELECT * FROM users;

-- Update
UPDATE users SET name = 'Andrea' WHERE id = 1;

-- Delete
DELETE FROM users WHERE id = 1;
