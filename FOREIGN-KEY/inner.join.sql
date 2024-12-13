-- Get all data from the "post" table and join it with the "user" table based on user_id 
--(এই কোয়েরি "post" এবং "user" টেবিল একসাথে যোগ করে সমস্ত ডেটা দেখাবে।)
SELECT * FROM post
    JOIN "user" ON post.user_id = "user".id;

-- Get the post titles and usernames by joining the "post" and "user" tables 
--(শুধুমাত্র "post" এর শিরোনাম এবং সংশ্লিষ্ট "user" এর নাম দেখাবে।)
SELECT title, username FROM post
    JOIN "user" ON post.user_id = "user".id;

-- Get all user IDs from the joined data 
--(যোগ করা টেবিল থেকে শুধুমাত্র "user" টেবিলের ID গুলো বের করে।)
SELECT "user".id FROM post
    JOIN "user" ON post.user_id = "user".id;

-- Get all post IDs from the joined data 
--(যোগ করা টেবিল থেকে শুধুমাত্র "post" টেবিলের ID গুলো বের করে।)
SELECT post.id FROM post
    JOIN "user" ON post.user_id = "user".id;

-- Use alias for table names to make the query shorter and more readable 
--(অ্যালিয়াস ব্যবহার করে টেবিলের নাম সংক্ষিপ্ত এবং পরিষ্কার করা হয়েছে।)
SELECT p.id FROM post p
    JOIN "user" u ON p.user_id = u.id;

-- Use alias with the "AS" keyword for better readability 
--(AS কিওয়ার্ড দিয়ে অ্যালিয়াস ব্যবহার আরও স্পষ্টভাবে করা হয়েছে।)
SELECT p.id FROM post AS p
    JOIN "user" AS u ON p.user_id = u.id;
