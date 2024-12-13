CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);
CREATE TABLE "post" (
    id SERIAL PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
)

INSERT INTO "user" (username) VALUES
    ('Rowshan'),
    ('Zannat'),
    ('Rohan'),
    ('Rashed'),
    ('Jhon'),
    ('Rose');
SELECT * from "user";
INSERT INTO "post" (title, user_id) VALUES
    ('Life is more than drama', 6),
    ('Time and tide wait for none.', 1),
    ('Life is so short so do not waste your time.', 4),
    ('What is the meaning of life? How would you like to spend your time man?', 2),
    ('Everyone is selfish so be careful', 3),
    ('Today is difficult, tomorrow is much more difficult But the day after tomorrow is beautiful.', 5);

SELECT * FROM post
/*
Deletion Constraints:
Default Behavior: ON DELETE NO ACTION (You cannot delete a user with posts.)
(ডিফল্ট আচরণ: ON DELETE NO ACTION (পোস্ট থাকা অবস্থায় ইউজার ডিলিট করা যাবে না।))
Cascade Deletion: Use ON DELETE CASCADE to delete all associated posts 
when a user is deleted.
(ক্যাসকেড ডিলিশন: ON DELETE CASCADE ব্যবহার করলে ইউজার ডিলিটের সাথে সম্পর্কিত সব পোস্টও ডিলিট হবে।)
*/
DELETE FROM "user"
     WHERE id = 4;
-- you can not delete because
-- ON DELETE NO ACTION (Default)
-- drop everything 
DROP Table "user";
DROP Table "post";
-- add >>>> ON DELETE CASCADE (to post ref id )
CREATE TABLE "post" (
    id SERIAL PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
)
--NOTE: after creating tables. insert new data
-- Now try to delete / yes you can! cause you have changed the default behavior
DELETE FROM "user"
     WHERE id = 4;

SELECT * from "post";
SELECT * from "user";

-- Deletion constraint on DELETE  user
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (Default)
-- Set Default value -> ON DELETE SET DEFAULT 'Value'