-- Active: 1733933996548@@127.0.0.1@5432@testdb
 
CREATE TABLE student (
    id SERIAL PRIMARY KEY,           -- ID column with auto-increment
    firstName VARCHAR(50) NOT NULL,   -- First name (cannot be null)
    lastName VARCHAR(50),             -- Last name
    age INT,                          -- Age of student
    grade CHAR(2),                    -- Grade (e.g., M for Male, F for Female)
    course VARCHAR(50),               -- Course name
    email VARCHAR(100) UNIQUE,        -- Unique email address
    dateOfBirth DATE,                 -- Date of birth
    bloodGroup VARCHAR(5),            -- Blood group
    country VARCHAR(30)               -- Country of residence
)

-- Inserting sample student data into the student table
-- ছাত্রদের ডেটা ইনসার্ট করা হচ্ছে
INSERT INTO student (id, firstName, lastName, age, grade, course, email, dateOfBirth, bloodGroup, country)
VALUES  
    (1, 'John', 'Doe', 20, 'M', 'Math', 'johndoe@gmail.com', '2004-01-15', 'O+', 'USA'),
    (2, 'Jane', 'Smith', 22, 'F', 'Biology', 'janesmith@gmail.com', '2002-05-10', 'A-', 'Canada'),
    (3, 'David', 'Lee', 25, 'M', 'Physics', 'davidlee@gmail.com', '1999-12-25', 'B+', 'Australia'),
    (4, 'Emily', 'Chen', 21, 'F', 'Chemistry', 'emilychen@gmail.com', '2003-08-20', 'AB+', 'China'),
    (5, 'Michael', 'Wang', 23, 'M', 'Computer Science', 'michaelwang@gmail.com', '2001-03-15', 'O-', 'Japan'),
    (6, 'Sarah', 'Kim', 24, 'F', 'History', 'sarahkim@gmail.com', '2000-11-05', 'B-', 'Korea'),
    (7, 'Daniel', 'Brown', 26, 'M', 'Geography', 'danielbrown@gmail.com', '1998-07-10', 'AB-', 'UK'),
    (8, 'Olivia', 'Taylor', 22, 'F', 'Psychology', 'oliviataylor@gmail.com', '2002-04-25', 'O+', 'USA'),
    (9, 'James', 'Anderson', 25, 'M', 'Sociology', 'jamesanderson@gmail.com', '1999-11-15', 'A+', 'Australia'),
    (10, 'Sophia', 'Martinez', 21, 'F', 'Economics', 'sophiamartinez@gmail.com', '2003-09-20', 'B+', 'Mexico'),
    (11, 'Benjamin', 'Davis', 23, 'M', 'Political Science', 'benjamindavis@gmail.com', '2001-02-15', 'O-', 'Canada'),
    (12, 'Ava', 'Wilson', 24, 'F', 'Philosophy', 'avawilson@gmail.com', '2000-10-05', 'B-', 'UK'),
    (13, 'Matthew', 'Garcia', 26, 'M', 'Anthropology', 'matthewgarcia@gmail.com', '1998-06-10', 'AB-', 'Spain'),
    (14, 'Charlotte', 'Rodriguez', 22, 'F', 'Linguistics', 'charlotterodriguez@gmail.com', '2002-03-25', 'O+', 'Brazil'),
    (15, 'Andrew', 'Patel', 25, 'M', 'Art History', 'andrewpatel@gmail.com', '1999-10-15', 'A+', 'India'),
    (16, 'Mia', 'Lee', 21, 'F', 'Music', 'miale@gmail.com', '2003-09-20', 'B+', 'China'),
    (17, 'Ethan', 'Hall', 23, 'M', 'Theater', 'ethanhall@gmail.com', '2001-02-15', 'O-', 'USA'),
    (18, 'Emily', 'Perez', 24, 'F', 'Dance', 'emilyperez@gmail.com', '2000-10-05', 'B-', 'Mexico'),
    (19, 'Daniel', 'Moore', 26, 'M', 'Film', 'danielmoore@gmail.com', '1998-06-10', 'AB-', 'UK');

-- Query to fetch data from person table (Note: this should be "student" table)
-- "person" টেবিল থেকে ডেটা নেওয়ার জন্য কুয়েরি (এটি "student" টেবিল হওয়া উচিত)
SELECT * FROM person;

-- Select email and age of all students
SELECT email, age FROM student;

-- Alias for email column
-- "email" কলামের জন্য এলিয়াস
SELECT email as student_email FROM student;

-- Notes:
-- Single quotes for string literals, double quotes for column aliases.
-- স্ট্রিং লিটারদের জন্য একক কোট ব্যবহার করুন, কলাম এলিয়াসের জন্য ডাবল কোট ব্যবহার করুন।
SELECT firstname, email as "Student Email", age FROM student;

-- ========= Sorting ============

-- Sorting by first name in ascending order
SELECT * FROM student ORDER BY firstname ASC;  -- Increasing order (A-Z)
SELECT * FROM student ORDER BY firstname DESC; -- Decreasing order (Z-A)

-- ==================================> Filtering <=====================================
-- ====================================================================================

-- Filter all unique countries
SELECT DISTINCT country FROM student;  -- Find distinct (unique) countries

-- Data filtering >>>>>>>>>>>>>>

-- Select students from the USA
SELECT * FROM student WHERE country = 'USA';

-- Select students with 'M' grade in Physics course
SELECT * FROM student WHERE grade = 'M' AND course = 'Physics';

-- Select students with a specific blood group ('A+')
SELECT * FROM student WHERE bloodgroup = 'A+';

-- Select students from the USA or from Australia
SELECT * FROM student WHERE country = 'USA' OR country = 'Australia';

-- Select students from the USA or from Australia and the age is 20
SELECT * FROM student WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

-- Select students older than 20
SELECT * FROM student WHERE age > 20;

-- Select students older than 20 and studying Biology
SELECT * FROM student WHERE age > 20 AND course = 'Biology';

-- Select students who are not 20 years old
SELECT * FROM student WHERE age <> 20;  -- `<>` means "not equal to"

-- Convert the first name to uppercase
SELECT upper(firstname) AS firstname_with_upper FROM student;

-- Scalar functions =====================>

-- Concatenate first name and last name
SELECT concat(firstname, ' ', lastname) FROM student;

-- Get the length of the first name
SELECT length(firstname) FROM student;

-- Convert first name to lowercase and uppercase
SELECT lower(firstname) FROM student;
SELECT upper(firstname) FROM student;

-- Aggregate functions =====================>

-- Find average age
SELECT avg(age) FROM student;

-- Find the maximum age
SELECT max(age) FROM student;

-- Find the minimum age
SELECT min(age) FROM student;

-- Find the total sum of ages
SELECT sum(age) FROM student;

-- Count the number of students
SELECT count(age) FROM student;

-- Scalar function with aggregate
SELECT max(length(firstname)) FROM student;  -- Find max length of first name

-- NOT operator !==
-- Select students who are not from the USA
SELECT * FROM student WHERE NOT country = 'USA';  -- Equivalent to country <> 'USA'
