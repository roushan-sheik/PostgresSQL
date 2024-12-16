SELECT * from employees;
EXPLAIN ANALYSE
SELECT * from employees WHERE employee_name = 'Jhon Doe';

-- create index 

CREATE INDEX idx_emp_name 
ON employees (employee_name);

-- to see data dir
SHOW data_directory  

 -- Hash Algo ===============>

-- B-TREE  (Default)
-- HASH
-- GIN
-- GIST

CREATE INDEX idx_emp_name 
ON employees USING HASH (employee_name)