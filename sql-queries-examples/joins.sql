-- INNER JOIN example
SELECT o.id, u.name
FROM orders o
INNER JOIN users u ON o.user_id = u.id;

-- LEFT JOIN example
SELECT u.name, o.id
FROM users u
LEFT JOIN orders o ON u.id = o.user_id;
