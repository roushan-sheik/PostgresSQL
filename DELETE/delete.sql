SELECT * FROM student;
-- Delete all data from table 
-- টেবিলের সমস্ত ডেটা মুছে ফেলা হবে
DELETE FROM student;

-- Delete those students whose grade = '2'
-- যেসব ছাত্রের গ্রেড '2' তাদের ডেটা মুছে ফেলা হবে
DELETE FROM student
    WHERE grade = '2';

-- NOTE: We can use multiple conditions and operators like AND, OR, NOT, etc. with DELETE
-- নোট: আমরা DELETE কমান্ডের সাথে একাধিক শর্ত এবং অপারেটর যেমন AND, OR, NOT, 
-- ইত্যাদি ব্যবহার করতে পারি

-- IMPORTANT: Always be careful when using DELETE, as it permanently removes data.
-- গুরুত্বপূর্ণ: DELETE ব্যবহার করার সময় সতর্ক থাকুন, কারণ এটি ডেটা স্থায়ীভাবে মুছে ফেলবে।

DELETE FROM student
    WHERE grade = 'M' AND country = 'USA';
-- Delete students with grade 'M' and country 'USA'
-- যেসব ছাত্রের গ্রেড 'M' এবং দেশ 'USA' তাদের ডেটা মুছে ফেলা হবে
