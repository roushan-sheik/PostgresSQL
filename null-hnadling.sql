SELECT * from  student
    WHERE email != NULL;
 SELECT * from student;
SELECT * from student
     WHERE email IS NULL;
SELECT * from student
     WHERE email IS NOT NULL;

SELECT * from student;
-- null handling wit COALESCE() ==============>
SELECT COALESCE(email, 'Email Not Provided')as "User Email", firstname, age  FROM student;
--=========== select student from USA, UK , Canada ==============>
SELECT * FROM student WHERE country = 'USA' OR country = 'UK' OR country = 'Canada';
-- more simple way

 SELECT * FROM student WHERE country IN('USA', 'UK', 'Canada');
 -- NOT 
 SELECT * FROM student WHERE country NOT IN('USA', 'UK', 'Canada');

-- BETWEEN range
-- Select those person age is greater than 20 and less than 25
 SELECT * from student
     WHERE age BETWEEN 20 and 25 ORDER BY age;

-- Like Operator (Case Sensitive)
-- find those students name starts with capital 'J'
SELECT * from student
     WHERE firstname LIKE 'J%';
-- find those students name ends with small 'n' 
SELECT * from student
     WHERE firstname LIKE '%n';

-- find those students name length is 4 and  second character small 'a' 
SELECT * from student
     WHERE firstname LIKE '_a__';
     
-- >>>>>>>>>>>> ILIKE (Not Case Sensitive)>>>>>>>>>>>>>>>>>>
-- find those students name starts with 'J'
SELECT * from student
     WHERE firstname ILIKE 'j%';
 