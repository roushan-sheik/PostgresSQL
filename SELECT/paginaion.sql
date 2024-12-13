--  skip first 2 students and give me 5 students
SELECT * FROM student  LIMIT 5 OFFSET 2;

-- pagination =============>
SELECT * FROM student LIMIT 5 OFFSET 5 * 0; -- page no: 0
SELECT * FROM student LIMIT 5 OFFSET 5 * 1; -- page no: 1
SELECT * FROM student LIMIT 5 OFFSET 5 * 2; -- page no: 2
SELECT * FROM student LIMIT 5 OFFSET 5 * 3; -- page no: 3
 

