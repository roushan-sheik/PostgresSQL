SELECT * FROM student
    WHERE email != NULL;
-- Incorrect way to check for NULL, use IS NULL or IS NOT NULL
-- NULL এর সাথে তুলনা করার জন্য ভুল পদ্ধতি, IS NULL বা IS NOT NULL ব্যবহার করুন

SELECT * FROM student;

SELECT * FROM student
    WHERE email IS NULL;
-- This query selects students with a NULL email.
-- এই কোয়েরি সেই ছাত্রদের নির্বাচন করবে যাদের ইমেইল NULL।

SELECT * FROM student
    WHERE email IS NOT NULL;
-- This query selects students with a non-NULL email.
-- এই কোয়েরি সেই ছাত্রদের নির্বাচন করবে যাদের ইমেইল NULL নয়।

SELECT * FROM student;

-- NULL handling with COALESCE()
-- COALESCE() will return the first non-NULL value from the list.
-- NULL হ্যান্ডলিং COALESCE() এর মাধ্যমে করা হচ্ছে।
SELECT COALESCE(email, 'Email Not Provided') AS "User Email", firstname, age FROM student;
-- If email is NULL, it will return 'Email Not Provided' instead of NULL.
-- যদি ইমেইল NULL হয়, তবে এটি 'Email Not Provided' দেখাবে।

-- Select students from USA, UK, Canada
-- USA, UK, কানাডা থেকে ছাত্র নির্বাচন করা হচ্ছে
SELECT * FROM student WHERE country = 'USA' OR country = 'UK' OR country = 'Canada';

-- More simple way to achieve the same result
-- একই ফলাফল পেতে আরও সহজ পদ্ধতি
SELECT * FROM student WHERE country IN('USA', 'UK', 'Canada');

-- Exclude students from USA, UK, and Canada
-- USA, UK, এবং কানাডা বাদ দিয়ে ছাত্র নির্বাচন করা হচ্ছে
SELECT * FROM student WHERE country NOT IN('USA', 'UK', 'Canada');

-- BETWEEN range
-- Select students with age between 20 and 25
-- বয়স ২০ থেকে ২৫ এর মধ্যে যারা ছাত্র তাদের নির্বাচন করা হচ্ছে
SELECT * FROM student
    WHERE age BETWEEN 20 AND 25 ORDER BY age;

-- LIKE Operator (Case Sensitive)
-- Case Sensitive অনুসন্ধান (LIKE)
-- Find students whose names start with capital 'J'
SELECT * FROM student
    WHERE firstname LIKE 'J%';

-- Find students whose names end with lowercase 'n'
SELECT * FROM student
    WHERE firstname LIKE '%n';

-- Find students whose names are exactly 4 characters long and the second character is lowercase 'a'
SELECT * FROM student
    WHERE firstname LIKE '_a__';

-- >>>>>>>>>>>> ILIKE (Not Case Sensitive) >>>>>>>>>>>>>>>>
-- Find students whose names start with 'J', case-insensitive
SELECT * FROM student
    WHERE firstname ILIKE 'j%';
-- The ILIKE operator is used for case-insensitive matching.
-- ILIKE অপারেটরটি কেস-ইনসেন্সিটিভ মেচিং এর জন্য ব্যবহৃত হয়।
