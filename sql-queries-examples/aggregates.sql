-- COUNT
SELECT COUNT(*) FROM users;

-- GROUP BY
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- AVG, SUM
SELECT AVG(salary), SUM(salary) FROM employees;
