-- Step 1: Database Setup
-- Create a new database named "university_db".
-- Command (run this in PostgreSQL shell):
-- CREATE DATABASE university_db;

-- Step 2: Table Creation

-- Create the 'students' table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    frontend_mark INT NOT NULL,
    backend_mark INT NOT NULL,
    status VARCHAR(20)
);

-- Create the 'courses' table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT NOT NULL
);

-- Create the 'enrollment' table
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
);

-- Step 3: Insert Sample Data

-- Insert data into 'students' table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status) VALUES
    ('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
    ('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
    ('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
    ('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
    ('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
    ('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

-- Insert data into 'courses' table
INSERT INTO courses (course_name, credits) VALUES
    ('Next.js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3);

-- Insert data into 'enrollment' table
INSERT INTO enrollment (student_id, course_id) VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 2);

-- Step 4: Queries

-- Query 1: Insert a new student record
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status) VALUES
    ('YourName', YourAge, 'YourEmail', YourMark, YourMark, NULL);

-- Bangla Note: নতুন ছাত্রের তথ্য যোগ করার জন্য উপরের কোডটি ব্যবহার করুন।

-- Query 2: Retrieve names of students enrolled in the 'Next.js' course
SELECT student_name 
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollment
    WHERE course_id = (SELECT course_id FROM courses WHERE course_name = 'Next.js')
);

-- Bangla Note: Next.js কোর্সে এনরোল করা ছাত্রদের নাম দেখানোর জন্য।

-- Query 3: Update the status of the student with the highest total marks to 'Awarded'
UPDATE students
SET status = 'Awarded'
WHERE student_id = (
    SELECT student_id
    FROM students
    ORDER BY (frontend_mark + backend_mark) DESC
    LIMIT 1
);

-- Bangla Note: সর্বাধিক নম্বর পাওয়া ছাত্রের স্ট্যাটাস আপডেট করার জন্য।

-- Query 4: Delete all courses with no students enrolled
DELETE FROM courses
WHERE course_id NOT IN (
    SELECT DISTINCT course_id FROM enrollment
);

-- Bangla Note: যেখানে কোনো ছাত্র এনরোল নেই, সেই কোর্স মুছে ফেলার জন্য।

-- Query 5: Retrieve names of students using a limit of 2, starting from the 3rd student
SELECT student_name
FROM students
ORDER BY student_id
LIMIT 2 OFFSET 2;

-- Bangla Note: তৃতীয় ছাত্র থেকে শুরু করে ২ জন ছাত্রের নাম দেখানোর জন্য।

-- Query 6: Retrieve course names and the number of students enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS students_enrolled
FROM courses c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

-- Bangla Note: প্রতিটি কোর্সে কতজন ছাত্র এনরোল করেছে তা দেখানোর জন্য।

-- Query 7: Calculate and display the average age of all students
SELECT ROUND(AVG(age), 2) AS average_age
FROM students;

-- Bangla Note: ছাত্রদের গড় বয়স দেখানোর জন্য।

-- Query 8: Retrieve names of students whose email contains 'example.com'
SELECT student_name
FROM students
WHERE email LIKE '%example.com';

-- Bangla Note: যেসব ছাত্রের ইমেইল "example.com" ধারণ করে তাদের নাম দেখানোর জন্য।