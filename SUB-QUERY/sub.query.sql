 
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY, 
    employee_name VARCHAR(50),  
    department_name VARCHAR(50),  -- Added missing comma here
    salary DECIMAL(10, 2), 
    hire_date DATE 
);

-- Insert employee data for various departments
INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
    ('John Doe', 'HR', 55000.00, '2020-01-15'),
    ('Jane Smith', 'IT', 60000.00, '2019-03-10'),
    ('Michael Johnson', 'Finance', 70000.00, '2018-07-20'),
    ('Emily Davis', 'Research and Development', 72000.00, '2021-09-01'),
    ('Daniel Wilson', 'Sales', 65000.00, '2020-05-25'),
    ('Sarah Brown', 'Customer Support', 48000.00, '2019-11-12'),
    ('David Miller', 'Operations', 51000.00, '2017-04-10'),
    ('Olivia Taylor', 'IT', 59000.00, '2018-08-15'),
    ('James Anderson', 'Legal', 63000.00, '2021-12-05'),
    ('Sophia Martinez', 'Administration', 56000.00, '2020-02-14'),
    ('Ethan Clark', 'HR', 62000.00, '2022-03-22'),
    ('Isabella Lopez', 'IT', 53000.00, '2021-06-30'),
    ('Benjamin White', 'Manager', 75000.00, '2020-10-11'),
    ('Charlotte Harris', 'Sales', 61000.00, '2018-09-19'),
    ('Matthew Young', 'Customer Support', 58000.00, '2020-07-16'),
    ('Amelia King', 'Finance', 46000.00, '2019-02-27'),
    ('Alexander Scott', 'IT', 54000.00, '2021-01-08'),
    ('Mia Adams', 'Research and Development', 50000.00, '2019-05-13'),
    ('William Baker', 'CEO', 120000.00, '2020-06-17'),
    ('Ava Carter', 'Administration', 47000.00, '2021-08-24'),
    ('Lucas Turner', 'HR', 52000.00, '2022-02-10'),
    ('Harper Phillips', 'IT', 58000.00, '2018-12-20'),
    ('Elijah Parker', 'Finance', 72000.00, '2020-06-17'),
    ('Lily Evans', 'Sales', 60000.00, '2021-10-21'),
    ('Jackson Collins', 'Customer Support', 54000.00, '2019-11-08'),
    ('Grace Morris', 'Operations', 48000.00, '2020-01-25'),
    ('Henry Reed', 'IT', 55000.00, '2018-07-05'),
    ('Victoria Cook', 'Research and Development', 49000.00, '2019-09-14'),
    ('Samuel Rivera', 'Manager', 57000.00, '2022-03-09'),
    ('Ella Bailey', 'Administration', 50000.00, '2020-11-29'),
    ('Liam Cooper', 'HR', 53000.00, '2023-01-11'),
    ('Natalie Foster', 'IT', 61000.00, '2023-04-22'),
    ('Chris Peterson', 'Finance', 68000.00, '2021-02-13'),
    ('Sophie Morgan', 'Sales', 67000.00, '2022-07-06'),
    ('Aaron Nelson', 'Customer Support', 66000.00, '2023-09-09'),
    ('Diana Richards', 'Operations', 52000.00, '2020-08-17'),
    ('Jacob Brooks', 'Manager', 59000.00, '2019-04-30'),
    ('Charlotte Walker', 'IT', 53000.00, '2022-05-01'),
    ('Ryan King', 'CEO', 150000.00, '2021-12-14'),
    ('Megan Scott', 'Sales', 51000.00, '2023-06-11'),
    ('Joshua Lee', 'HR', 55000.00, '2021-11-19'),
    ('Ella Nelson', 'IT', 65000.00, '2023-08-30'),
    ('Zoe Bennett', 'Finance', 71000.00, '2020-10-25'),
    ('Jack Hall', 'Operations', 64000.00, '2022-09-15'),
    ('Oliver Turner', 'Sales', 54000.00, '2021-06-05'),
    ('Sophia Green', 'Customer Support', 60000.00, '2022-03-22'),
    ('Liam Hall', 'Manager', 55000.00, '2020-12-05'),
    ('Emily Harris', 'IT', 63000.00, '2023-03-10'),
    ('Amos White', 'Administration', 57000.00, '2023-05-22'),
    ('Aidan Gray', 'HR', 56000.00, '2022-11-30'),
    ('Cameron Evans', 'IT', 68000.00, '2021-08-11'),
    ('Diana Foster', 'Finance', 69000.00, '2020-07-21'),
    ('Ethan Lee', 'Research and Development', 71000.00, '2021-01-10'),
    ('Mason Price', 'Sales', 62000.00, '2020-09-30'),
    ('Ava Harris', 'Customer Support', 64000.00, '2021-04-18');
 
SELECT * FROM employees;
--  Retrieve all employees whose salary is greater than the highest salary of the HR department.

SELECT max(salary) as max_salary FROM employees 
WHERE department_name = 'HR';

-- Nasted query  
-- Scaler sub query   
SELECT * from employees 
WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR');

-- Can return a single value  
-- Can return multiple rows  
-- Can return a single column

SELECT department_name FROM employees GROUP BY department_name;