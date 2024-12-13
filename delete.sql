SELECT * from student;
-- Delete all data from table 
 DELETE FROM student;
-- Delete those student grade = '2'
 DELETE FROM student
    WHERE grade = '2';

--NOTE: We can use all operators with DELETE like: AND , OR , NOT , Etc.

 DELETE FROM student
    WHERE grade = 'M' country = 'USA';