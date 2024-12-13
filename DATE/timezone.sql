SHOW timezone; -- Asia/Dhaka
-- timestamps with time zone 
-- timestamps without time zone 
SELECT now();

CREATE TABLE aboutTime (time_stamp TIMESTAMP WITHOUT TIME ZONE,time_zone TIMESTAMP WITH TIME ZONE);
SELECT * FROM aboutTime;
INSERT INTO abouttime VALUES ('2024-02-16 10:45:13', '2024-02-16 10:45:13') ;

SELECT now();
SELECT CURRENT_DATE;
SELECT now()::date; -- date casting
SELECT now()::time; -- time casting

-- get date by spec format 
SELECT to_char(now(), 'dd/mm/yyyy');
-- calculate student age by date of birth 

SELECT *, age(CURRENT_DATE,dateofbirth ) FROM student;

-- extract 

SELECT extract(year from '1999-04-03'::date); // :: type casting 

-- type casting 
SELECT 1::BOOLEAN 