SELECT * FROM student;

UPDATE student
    SET email = 'chen@gmail.com'
    WHERE id = 4;
--NOTE: We can use multiple condition and all operators with DELETE like: AND , OR , NOT , Etc.
UPDATE student
    SET email = 'chen@gmail.com' , age = 20 , course= "CSE"-- ultiple column update
    WHERE id = 4 , age = 20