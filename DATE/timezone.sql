-- Show the current timezone  
-- (বর্তমান টাইমজোন দেখান।)
SHOW timezone; -- Example: Asia/Dhaka

-- Retrieve the current timestamp with and without the timezone  
-- (টাইমজোন সহ এবং টাইমজোন ছাড়া বর্তমান টাইমস্ট্যাম্প দেখান।)
SELECT now();

-- Create a table with two timestamp columns: one without time zone and one with time zone  
-- (দুই টাইমস্ট্যাম্প কলামসহ একটি টেবিল তৈরি করুন: একটি টাইমজোন ছাড়া এবং একটি টাইমজোন সহ।)
CREATE TABLE aboutTime (
    time_stamp TIMESTAMP WITHOUT TIME ZONE,
    time_zone TIMESTAMP WITH TIME ZONE
);

-- Insert data into the "aboutTime" table  
-- (aboutTime টেবিলে ডেটা যোগ করুন।)
INSERT INTO aboutTime VALUES ('2024-02-16 10:45:13', '2024-02-16 10:45:13');

-- Retrieve all data from the "aboutTime" table  
-- (aboutTime টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM aboutTime;

-- Show the current timestamp  
-- (বর্তমান টাইমস্ট্যাম্প দেখান।)
SELECT now();

-- Show the current date  
-- (বর্তমান তারিখ দেখান।)
SELECT CURRENT_DATE;

-- Convert the current timestamp to date only (date casting)  
-- (টাইমস্ট্যাম্প থেকে শুধু তারিখ দেখানোর জন্য কাস্ট করুন।)
SELECT now()::date;

-- Convert the current timestamp to time only (time casting)  
-- (টাইমস্ট্যাম্প থেকে শুধু সময় দেখানোর জন্য কাস্ট করুন।)
SELECT now()::time;

-- Get the date in a specific format (DD/MM/YYYY)  
-- (নির্দিষ্ট ফরম্যাটে তারিখ দেখান (DD/MM/YYYY)।)
SELECT to_char(now(), 'dd/mm/yyyy');

-- Calculate a student's age using their date of birth  
-- (ছাত্রের জন্ম তারিখ ব্যবহার করে বয়স হিসাব করুন।)
SELECT *, age(CURRENT_DATE, dateofbirth) FROM student;

-- Extract the year from a date  
-- (তারিখ থেকে বছরের অংশ বের করুন।)
SELECT extract(year FROM '1999-04-03'::date); -- :: type casting

-- Type casting example: Convert an integer to a boolean  
-- (টাইপ কাস্টিং উদাহরণ: ইন্টিজারকে বুলিয়ানে রূপান্তর করুন।)
SELECT 1::BOOLEAN;
