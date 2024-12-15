-- Create a table for departments
-- বিভাগসমূহের জন্য একটি টেবিল তৈরি করা হচ্ছে
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY, -- Unique ID for each department (প্রতিটি বিভাগের জন্য ইউনিক আইডি)
    department_name VARCHAR(50) -- Name of the department (বিভাগের নাম সংরক্ষণ করা হবে)
);

-- Create a table for employees
-- কর্মচারীদের জন্য একটি টেবিল তৈরি করা হচ্ছে
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY, -- Unique ID for each employee (প্রতিটি কর্মচারীর জন্য ইউনিক আইডি)
    employee_name VARCHAR(50), -- Name of the employee (কর্মচারীর নাম সংরক্ষণ করা হবে)
    department_id INT REFERENCES departments(department_id), -- Reference to the department table (বিভাগ টেবিলের রেফারেন্স)
    salary DECIMAL(10, 2), -- Salary of the employee (কর্মচারীর বেতন)
    hire_date DATE -- Hire date of the employee (কর্মচারী নিয়োগের তারিখ)
);

-- Insert data into the departments table
-- বিভাগ টেবিলে তথ্য যোগ করা হচ্ছে
INSERT INTO departments (department_name) VALUES
('Human Resources'), -- Human Resources (মানব সম্পদ)
('Marketing'), -- Marketing (মার্কেটিং)
('Finance'), -- Finance (আর্থিক বিভাগ)
('Research and Development'), -- Research and Development (গবেষণা এবং উন্নয়ন)
('IT Services'), -- IT Services (আইটি সেবা)
('Sales'), -- Sales (বিক্রয় বিভাগ)
('Customer Support'), -- Customer Support (গ্রাহক সহায়তা)
('Operations'), -- Operations (কার্যক্রম)
('Legal'), -- Legal (আইন বিভাগ)
('Administration'); -- Administration (প্রশাসনিক বিভাগ)

-- Insert data into the employees table
-- কর্মচারী টেবিলে তথ্য যোগ করা হচ্ছে
INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
    ('John Doe', 1, 55000.00, '2020-01-15'), -- John Doe works in Human Resources
    ('Jane Smith', 2, 60000.00, '2019-03-10'), -- Jane Smith works in Marketing
    ('Michael Johnson', 3, 70000.00, '2018-07-20'), -- Michael Johnson works in Finance
    ('Emily Davis', 4, 72000.00, '2021-09-01'), -- Emily Davis works in Research and Development
    ('Daniel Wilson', 5, 65000.00, '2020-05-25'), -- Daniel Wilson works in IT Services
    ('Sarah Brown', 6, 48000.00, '2019-11-12'), -- Sarah Brown works in Sales
    ('David Miller', 7, 51000.00, '2017-04-10'), -- David Miller works in Customer Support
    ('Olivia Taylor', 8, 59000.00, '2018-08-15'), -- Olivia Taylor works in Operations
    ('James Anderson', 9, 63000.00, '2021-12-05'), -- James Anderson works in Legal
    ('Sophia Martinez', 10, 56000.00, '2020-02-14'); -- Sophia Martinez works in Administration

-- Select all data from the departments table
-- বিভাগ টেবিলের সব তথ্য দেখাও
SELECT * FROM departments;

-- Calculate the average salary for each employee
-- প্রতিটি কর্মচারীর গড় বেতন দেখাও
SELECT employee_name, avg(salary) FROM employees
    JOIN departments USING (department_id)
    GROUP BY employee_name;

-- Calculate the average salary for each department
-- প্রতিটি বিভাগের গড় বেতন দেখাও
SELECT department_name, round(avg(salary)) AS avg_salary FROM employees
    JOIN departments USING (department_id)
    GROUP BY department_name;

-- Count the number of employees in each department
-- প্রতিটি বিভাগে কর্মচারীর সংখ্যা দেখাও
SELECT department_name, count(*) AS employee_count FROM employees
    JOIN departments USING (department_id)
    GROUP BY department_name;

-- Group employees by their hire year and count them
-- কর্মচারীদের নিয়োগের বছর অনুসারে গ্রুপ করা এবং সংখ্যা দেখানো
SELECT extract(YEAR FROM hire_date) AS hire_year, count(*) FROM employees
    GROUP BY hire_year;

-- Create a table for customers
-- গ্রাহকদের জন্য একটি টেবিল তৈরি করা হচ্ছে
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY, -- Unique ID for each customer (প্রতিটি গ্রাহকের জন্য ইউনিক আইডি)
    customer_name VARCHAR(50) NOT NULL, -- Name of the customer (গ্রাহকের নাম)
    customer_add VARCHAR(100) NOT NULL, -- Address of the customer (গ্রাহকের ঠিকানা)
    phone VARCHAR(15) -- Phone number of the customer (গ্রাহকের ফোন নম্বর)
);

-- Insert data into the customers table
-- গ্রাহকদের তথ্য যোগ করা হচ্ছে
INSERT INTO customers (customer_name, customer_add, phone) VALUES
    ('John Doe', '123 Main St, New York, USA', '+11234567890'), -- John Doe's information
    ('Jane Smith', '456 Elm St, Los Angeles, USA', '+11234567891'), -- Jane Smith's information
    ('Michael Johnson', '789 Pine St, Chicago, USA', '+11234567892'); -- Michael Johnson's information

-- Create a table for orders
-- অর্ডারের জন্য একটি টেবিল তৈরি করা হচ্ছে
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY, -- Unique ID for each order (প্রতিটি অর্ডারের জন্য ইউনিক আইডি)
    customer_id INT REFERENCES customers(customer_id), -- Reference to the customer table (গ্রাহক টেবিলের রেফারেন্স)
    order_date DATE, -- Date of the order (অর্ডারের তারিখ)
    total_amount DECIMAL(10, 2) -- Total amount of the order (মোট অর্ডারের মূল্য)
);

-- Insert data into the orders table
-- অর্ডার টেবিলে তথ্য যোগ করা হচ্ছে
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
    (1, '2024-11-01', 150.50), -- John Doe's order
    (2, '2024-11-02', 220.00), -- Jane Smith's order
    (3, '2024-11-03', 75.99); -- Michael Johnson's order

-- Find customers who have placed more than 2 orders and calculate the total cost
-- এমন গ্রাহক খুঁজুন যারা ২টির বেশি অর্ডার করেছেন এবং মোট খরচ দেখুন
SELECT customer_id, count(order_id), sum(total_amount) FROM orders 
    GROUP BY customer_id 
    HAVING count(order_id) > 2;

-- Calculate total sales for each month in 2024
-- ২০২৪ সালের প্রতিটি মাসের মোট বিক্রয় দেখাও
SELECT extract(MONTH FROM order_date) AS month, 
    sum(total_amount) FROM orders 
    WHERE extract(year FROM order_date) = 2024
    GROUP BY month;
