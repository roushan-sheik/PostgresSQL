-- Active: 1733933996548@@127.0.0.1@5432@testdb
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    dateOfBirth DATE,
    bloodGroup VARCHAR(5),
    country VARCHAR(30)
)

INSERT INTO student (id, firstName , lastName , age, grade, course, email, dateOfBirth, bloodGroup,country)
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
    (19, 'Daniel', 'Moore', 26, 'M', 'Film', 'danielmoore@gmail.com', '1998-06-10', 'AB-', 'UK')
     
-- Query ==========================================>
SELECT * FROM person;
SELECT email, age FROM student;

-- Name aleas 
SELECT email as student_email FROM student;
-- note: single quote for string and dubble quote for column
SELECT firstname, email as "Student Email", age FROM student;

-- ========= sorting ============
SELECT * FROM student ORDER BY firstname ASC;
SELECT * FROM student ORDER BY firstname DESC;


--  ==================================> Filtering <=====================================
--  ====================================================================================
-- filter all the unique country 
SELECT DISTINCT country from student;

-- Data filtering >>>>>>>>>>>>>>

-- Select student from the USA
-- Select student with 'A' grade in Physics
-- Select student with a specific blood group ('A+')
-- Select student from the USA or from Australia
-- Select student from the USA or from Australia and the age is 20
-- Select student with a grade of 'A' or 'B' in Math or Physics
-- Select student older then 20

-- Select student from the USA
SELECT * from student
     WHERE country = 'USA';
-- Select student with 'A' grade in Physics
SELECT * FROM student
    WHERE grade = 'M'
-- Select student with a specific blood group ('A+')
SELECT * from student
    WHERE bloodgroup = 'A+';

-- Select student from the USA or from Australia
SELECT * FROM student
    WHERE country = 'Australia' OR country = 'USA'

-- Select student from the USA or from Australia and the age is 20
SELECT * FROM student
     WHERE (country ='Australia' OR country = 'USA') AND age = 20

-- Select student older then 20
SELECT * FROM student
     WHERE  age > 20;

-- Select student older then 20 amd course Biology
SELECT * FROM student
     WHERE  age > 20 AND course = 'Biology';

-- Select student older then 20  
SELECT * FROM student
     WHERE  age > 20  ;

-- Select all the student2 without age 20 
SELECT * FROM student
     WHERE  age <> 20  

-- convert to upper case 

SELECT  upper(firstname)as firstname_with_upper  FROM student;

-- scalar function  =====================>
-- concat first name and last name 
SELECT concat(firstname,' ', lastname) FROM student;

SELECT length(firstname) from student;
SELECT lower(firstname) from student;
SELECT upper(firstname) from student;

-- aggregate function  =====================>
-- AVG()
-- MAX()
-- MIN()
-- SUM()
-- COUNT()
SELECT   avg(age) from student;
SELECT   max(age) from student;
SELECT   min(age) from student;
SELECT   sum(age) from student;
SELECT   count(age) from student;
-- scalar with aggregate
SELECT   max(length(firstname  )) from student;

-- NOT !==
SELECT * from student
     WHERE NOT country = 'USA';
