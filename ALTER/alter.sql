-- Active connection: 1733933996548@@127.0.0.1@5432@testdb  

-- Get all data from "person2" table  
-- ("person2" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM person2;

-- Add a new column "email" with a default value and NOT NULL constraint  
-- ("email" নামে নতুন কলাম যোগ করুন যেখানে ডিফল্ট মান ও NOT NULL কন্ডিশন আছে।)
ALTER TABLE person2 
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

-- Add a new column "address" with NOT NULL constraint  
-- ("address" নামে নতুন কলাম যোগ করুন যা NOT NULL কন্ডিশন সহ।)
ALTER TABLE person2 
    ADD COLUMN address VARCHAR(25) NOT NULL;

-- Delete the column "address"  
-- ("address" কলামটি মুছে ফেলুন।)
ALTER TABLE person2
    DROP COLUMN address;

-- Rename the column "age" to "person_age"  
-- ("age" কলামের নাম পরিবর্তন করে "person_age" করুন।)
ALTER TABLE person2
    RENAME COLUMN age TO person_age;

-- Update the column type of "person_name" to VARCHAR(20)  
-- ("person_name" কলামের টাইপ পরিবর্তন করে VARCHAR(20) করুন।)
ALTER TABLE person2
    ALTER COLUMN person_name TYPE VARCHAR(20);

-- Add NOT NULL constraint to the column "person_name"  
-- ("person_name" কলামে NOT NULL কন্ডিশন যোগ করুন।)
ALTER TABLE person2
    ALTER COLUMN person_name SET NOT NULL;

-- Remove NOT NULL constraint from the column "person_name"  
-- ("person_name" কলাম থেকে NOT NULL কন্ডিশন সরিয়ে ফেলুন।)
ALTER TABLE person2
    ALTER COLUMN person_name DROP NOT NULL;

-- Add a unique constraint on "person_name" column  
-- ("person_name" কলামে ইউনিক কন্ডিশন যোগ করুন।)
ALTER TABLE person2
    ADD CONSTRAINT unique_person2_person_name UNIQUE(person_name);

-- Delete the unique constraint from "person_name" column  
-- ("person_name" কলামের ইউনিক কন্ডিশন মুছে ফেলুন।)
ALTER TABLE person2
    DROP CONSTRAINT unique_person2_person_name;

-- Delete the table "person3"  
-- ("person3" টেবিলটি ডিলিট করুন।)
DROP TABLE person3;

-- Get all data from "person2" table  
-- ("person2" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM person2;

-- Delete all records from "person" table  
-- ("person" টেবিলের সব রেকর্ড ডিলিট করুন।)
TRUNCATE TABLE person;

-- Insert new data into "person" table  
-- ("person" টেবিলে নতুন ডেটা যোগ করুন।)
INSERT INTO person VALUES (1, 'Zannat', 22);

-- Get all data from "person" table  
-- ("person" টেবিল থেকে সব ডেটা বের করুন।)
SELECT * FROM person;
