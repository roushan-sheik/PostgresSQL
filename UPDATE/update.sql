SELECT * FROM student;

-- Update the email of the student with id = 4
-- id = 4 এর ছাত্রটির ইমেইল আপডেট করুন
UPDATE student
    SET email = 'chen@gmail.com'
    WHERE id = 4;

-- Update multiple columns (email, age, course) for the student with id = 4 and age = 20
-- id = 4 এবং age = 20 এর জন্য দুইটি কলাম (email, age, course) আপডেট করুন
UPDATE student
    SET email = 'chen@gmail.com', age = 20, course = 'CSE'
    WHERE id = 4 AND age = 20;
