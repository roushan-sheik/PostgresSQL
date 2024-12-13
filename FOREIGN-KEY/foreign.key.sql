-- Create "user" table with id as PRIMARY KEY and username as a required field  
-- ("user" টেবিল তৈরি যেখানে id PRIMARY KEY এবং username বাধ্যতামূলক ফিল্ড)  
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

-- Create "post" table with id as PRIMARY KEY, title as a required field, 
-- and a user_id referencing "user" table with ON DELETE CASCADE.  
-- ("post" টেবিল তৈরি যেখানে user_id রেফারেন্স করছে "user" টেবিল এবং 
-- ON DELETE CASCADE যোগ করা হয়েছে।)
CREATE TABLE "post" (
    id SERIAL PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);

-- Insert sample data into the "user" table  
-- ("user" টেবিলে কিছু উদাহরণ ডেটা যোগ করা হয়েছে।)
INSERT INTO "user" (username) VALUES
    ('Rowshan'),
    ('Zannat'),
    ('Rohan'),
    ('Rashed'),
    ('Jhon'),
    ('Rose');

-- Select all data from the "user" table  
-- ("user" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM "user";

-- Insert sample data into the "post" table  
-- ("post" টেবিলে কিছু উদাহরণ ডেটা যোগ করা হয়েছে।)
INSERT INTO "post" (title, user_id) VALUES
    ('Life is more than drama', 6),
    ('Time and tide wait for none.', 1),
    ('Life is so short so do not waste your time.', 4),
    ('What is the meaning of life? How would you like to spend your time man?', 2),
    ('Everyone is selfish so be careful', 3),
    ('Today is difficult, tomorrow is much more difficult But the day after tomorrow is beautiful.', 5);

-- Select all data from the "post" table  
-- ("post" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM post;

-- Deletion Constraints:
-- Default Behavior: ON DELETE NO ACTION (You cannot delete a user with posts.)
-- ডিফল্ট আচরণ: ON DELETE NO ACTION (পোস্ট থাকা অবস্থায় ইউজার ডিলিট করা যাবে না।)
-- Cascade Deletion: Use ON DELETE CASCADE to delete all associated posts when a user is deleted.
-- ক্যাসকেড ডিলিশন: ON DELETE CASCADE ব্যবহার করলে ইউজার ডিলিটের সাথে 
-- সম্পর্কিত সব পোস্টও ডিলিট হবে।

-- Attempt to delete a user with posts (will fail due to default behavior ON DELETE NO ACTION)  
-- ("user" ডিলিট করার চেষ্টা কিন্তু কাজ করবে না কারণ ডিফল্ট ON DELETE NO ACTION।)
DELETE FROM "user"
     WHERE id = 4;

-- Drop both "user" and "post" tables  
-- (দুইটি টেবিল ডিলিট করুন।)
DROP TABLE "user";
DROP TABLE "post";

-- Recreate "post" table with ON DELETE CASCADE  
-- ("post" টেবিল আবার তৈরি করা হয়েছে যেখানে ON DELETE CASCADE ব্যবহার করা হয়েছে।)
CREATE TABLE "post" (
    id SERIAL PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);

-- NOTE: After creating tables, insert new data  
-- (নতুন টেবিল তৈরি করার পর নতুন ডেটা যোগ করুন।)

-- Now try to delete a user (will work due to ON DELETE CASCADE)  
-- এখন "user" ডিলিট করার চেষ্টা করুন (ON DELETE CASCADE ব্যবহারের কারণে কাজ করবে।)
DELETE FROM "user"
     WHERE id = 4;

-- Select all data from "post" table  
-- ("post" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM post;

-- Select all data from "user" table  
-- ("user" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM user;

-- Deletion constraint on DELETE user:
-- 1. Cascading Deletion -> ON DELETE CASCADE  
--    (ক্যাসকেড ডিলিশন -> ON DELETE CASCADE)
-- 2. Setting NULL -> ON DELETE SET NULL  
--    (NULL সেট -> ON DELETE SET NULL)
-- 3. Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (Default)  
--    (ডিলিশন বন্ধ -> ON DELETE RESTRICT / ON DELETE NO ACTION)
-- 4. Set Default Value -> ON DELETE SET DEFAULT 'Value'  
--    (ডিফল্ট মান সেট -> ON DELETE SET DEFAULT 'Value')
