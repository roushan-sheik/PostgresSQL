-- Create the employees table
-- employees টেবিল তৈরি
CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

-- Create the departments table
-- departments টেবিল তৈরি
CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

-- Insert data into employees table
-- employees টেবিলে ডাটা যোগ করুন
INSERT INTO employees VALUES 
(1, 'Jhon Doe', 101);

INSERT INTO employees VALUES 
(2, 'Jane Smith', 102);

-- Insert data into departments table
-- departments টেবিলে ডাটা যোগ করুন
INSERT INTO departments VALUES  
(101, 'Human Resources');

INSERT INTO departments VALUES  
(102, 'Marketing');

-- Get all data from employees table
-- employees টেবিলের সকল ডাটা দেখুন
SELECT * FROM employees;

-- Get all data from departments table
-- departments টেবিলের সকল ডাটা দেখুন
SELECT * FROM departments;

-- CROSS JOIN: Combine each row of one table with all rows of another table
-- CROSS JOIN: একটি টেবিলের প্রতিটি রো অন্য টেবিলের সব রোর সাথে যোগ হয়
SELECT * FROM employees 
CROSS JOIN departments;

-- NATURAL JOIN: Combines rows from both tables based on common columns
-- NATURAL JOIN: উভয় টেবিলের সাধারণ কলামের উপর ভিত্তি করে রো যোগ হয়
SELECT * FROM employees 
NATURAL JOIN departments;

-- What is CROSS Join?
-- CROSS JOIN combines every row of the first table with every row of the second table, resulting in a Cartesian product. 
-- CROSS JOIN প্রথম টেবিলের প্রতিটি রোকে দ্বিতীয় টেবিলের প্রতিটি রোর সাথে যোগ করে, যার ফলাফল কার্টেসিয়ান প্রোডাক্ট হয়।

-- What is NATURAL Join?
-- NATURAL JOIN automatically joins two tables based on columns with the same name and compatible data types. Only matching rows are returned.
-- NATURAL JOIN স্বয়ংক্রিয়ভাবে দুইটি টেবিলের একই নাম এবং ডেটা টাইপের কলামের উপর ভিত্তি করে যোগ করে। শুধুমাত্র ম্যাচ করা রো দেখায়।
