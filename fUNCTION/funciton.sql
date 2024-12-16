SELECT * from employees;
-- simple function   ==================>
CREATE Function emp_count ()
RETURNS INTEGER
LANGUAGE SQL
AS
$$
SELECT count(*) from employees;
$$

SELECT emp_count()

-- another delete function   
CREATE Function delete_emp ()
RETURNS void 
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = 55
$$

SELECT delete_emp()

-- delete employee by id  
CREATE Function delete_emp_byId(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS 
$$
DELETE from employees WHERE employee_id = p_emp_id
$$
SELECT * FROM employees;

-- delete by id  function 
SELECT delete_emp_byId(54)