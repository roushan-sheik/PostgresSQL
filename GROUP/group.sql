SELECT * FROM student;

-- make group by country with group  count / and avg age 
SELECT country, count(*), avg(age) FROM student
    GROUP BY country
    HAVING avg(age) > 25;
-- count student born in each year
SELECT extract(year FROM dateofbirth) as birth_year, count(*)
    FROM student
    GROUP BY birth_year;