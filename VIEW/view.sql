SELECT * FROM employees;

CREATE View dep_avg_salary
AS 
SELECT department_name, avg(salary) FROM employees   GROUP BY department_name;

SELECT * from dep_avg_salary;


-- another view  
CREATE VIEW test_view AS 
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN 
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM test_view;

-- Benifits 
-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction