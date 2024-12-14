-- get all post
SELECT * from post;
-- inner join
SELECT * from "post" as p
 JOIN "user" as u on p.user_id = u.id;

-- insert null value for testing
INSERT INTO post (id , title, user_id) VALUES 
    (7, 'Vai eta ekta test post ', NULL);

-- get all post
SELECT * from "post";
-- get all user
SELECT * from "user";

-- post left join
SELECT * from "post" as p 
 LEFT JOIN "user" as u on p.id = u.id;
-- post right join
SELECT * from "post" as p 
 RIGHT JOIN "user" as u on p.id = u.id;
-- user left join
-- OUTER is Optional You will get the same output
SELECT * from "user" as u 
 LEFT OUTER JOIN "post" as p on u.id = p.user_id;
-- user right join
SELECT * from "user" as u 
 RIGHT OUTER JOIN "post" as p on u.id = p.user_id;


-- Explanation of Inner Join:
-- Inner Join fetches only the matching rows from both tables based on the join condition.
-- Inner Join শুধুমাত্র উভয় টেবিলের ম্যাচ করা রো গুলো দেখায়।

-- Explanation of Left Join:
-- Left Join fetches all rows from the left table and matching rows from the right table. Non-matching rows in the right table will have NULL values.
-- Left Join বাম টেবিলের সকল রো এবং ডান টেবিলের সাথে ম্যাচ হওয়া রো গুলো দেখায়। 
-- ডান টেবিলের ম্যাচ না হওয়া রো গুলোর জায়গায় NULL থাকবে।

-- Explanation of Right Join:
-- Right Join fetches all rows from the right table and matching rows from the left table. Non-matching rows in the left table will have NULL values.
-- Right Join ডান টেবিলের সকল রো এবং বাম টেবিলের সাথে ম্যাচ হওয়া রো গুলো দেখায়। 
-- বাম টেবিলের ম্যাচ না হওয়া রো গুলোর জায়গায় NULL থাকবে।