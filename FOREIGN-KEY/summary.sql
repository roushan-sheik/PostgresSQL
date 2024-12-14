1. INNER JOIN (ভিতরের যোগ):

-- দুইটি টেবিলের কমন ডেটা বা ম্যাচ করা রো দেখায়।
-- ম্যাচিং কলাম ছাড়া অন্য কোনো রো দেখায় না।
 
SELECT * FROM table1 
INNER JOIN table2 
ON table1.common_column = table2.common_column;
-- উদাহরণ:
-- employees এবং departments টেবিল থেকে সেই রো দেখাবে যেখানে dept_id ম্যাচ করে।

-- 2. LEFT JOIN (বাম যোগ):

-- প্রথম টেবিলের সকল ডেটা দেখায়, এবং দ্বিতীয় টেবিলের সাথে ম্যাচিং না হলে NULL দেখায়।

SELECT * FROM table1 
LEFT JOIN table2 
ON table1.common_column = table2.common_column;
-- উদাহরণ:
-- mployees টেবিলের সব রো দেখাবে, এমনকি কোনো dept_id ম্যাচ না করলেও।

-- 3. RIGHT JOIN (ডান যোগ):

-- দ্বিতীয় টেবিলের সকল ডেটা দেখায়, এবং প্রথম টেবিলের সাথে ম্যাচিং না হলে NULL দেখায়।
 
SELECT * FROM table1 
RIGHT JOIN table2 
ON table1.common_column = table2.common_column;
-- উদাহরণ:
-- departments টেবিলের সব রো দেখাবে, এমনকি কোনো dept_id ম্যাচ না করলেও।

-- 4. FULL OUTER JOIN (সম্পূর্ণ যোগ):

-- দুইটি টেবিলের সব ডেটা দেখায়, ম্যাচ করলে দেখাবে, আর না ম্যাচ করলে NULL দেখাবে।
 
SELECT * FROM table1 
FULL OUTER JOIN table2 
ON table1.common_column = table2.common_column;
-- উদাহরণ:
-- employees এবং departments টেবিলের সকল রো দেখাবে, ম্যাচিং ছাড়া NULL দেখাবে।

-- 5. CROSS JOIN (ক্রস যোগ):

-- প্রথম টেবিলের প্রতিটি রো দ্বিতীয় টেবিলের প্রতিটি রো-র সাথে যোগ হয়।
-- ফলাফল: কার্টেসিয়ান প্রোডাক্ট।
 
SELECT * FROM table1 
CROSS JOIN table2;
-- উদাহরণ:
-- employees টেবিলে ২টি রো এবং departments টেবিলে ৩টি রো থাকলে, আউটপুটে 
-- 2 × 3 = 6
-- 2×3=6 রো থাকবে।

--. NATURAL JOIN (প্রাকৃতিক যোগ):

-- সাধারণ কলাম (কমন নাম ও ডেটা টাইপ) ভিত্তিক রো ম্যাচ করে দেখায়।
-- কোনো ON কন্ডিশন প্রয়োজন নেই।
 
SELECT * FROM table1 
NATURAL JOIN table2;
-- উদাহরণ:
-- employees এবং departments টেবিলে যদি dept_id কমন থাকে, তাহলে ম্যাচ করা রো দেখাবে।
/*
চিত্রকল্প:
INNER JOIN: শুধু ম্যাচ করা রো।
LEFT JOIN: প্রথম টেবিলের সব রো + ম্যাচ না হলে NULL।
RIGHT JOIN: দ্বিতীয় টেবিলের সব রো + ম্যাচ না হলে NULL।
FULL OUTER JOIN: দুই টেবিলের সব রো + ম্যাচ না হলে NULL।
CROSS JOIN: প্রতিটি রো একে অপরের সাথে যোগ।
NATURAL JOIN: ম্যাচ করা রো, যেখানে কলাম কমন।
সহজ কথা:
INNER JOIN বেশি ব্যবহার হয় কারণ শুধু রিলেটেড ডেটা দরকার হয়।
LEFT/RIGHT JOIN ব্যবহার হয় অসম্পূর্ণ ডেটা যোগ করার জন্য।
CROSS JOIN কম ব্যবহার হয়।
NATURAL JOIN অটোমেটিক ম্যাচের জন্য কাজ করে।
 */