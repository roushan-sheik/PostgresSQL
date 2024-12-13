-- Active: 1733933996548@@127.0.0.1@5432@testdb
SELECT * FROM person2 ;

-- column add 
ALTER TABLE person2 
    ADD COLUMN email VARCHAR(25) DEFAULT "default@gmail.com" NOT NULL;

ALTER TABLE person2 
    ADD COLUMN address VARCHAR(25)   NOT NULL;
-- Delete column 
ALTER TABLE person2
    DROP COLUMN address;

-- update column 
ALTER TABLE person2
    RENAME COLUMN age to person_age;
-- update column type varchar 20
ALTER TABLE person2
    ALTER COLUMN person_name TYPE VARCHAR(20);

-- add constraints not null 
ALTER TABLE person2
    ALTER COLUMN person_name set NOT NULL;
-- remove  constraints not null 
ALTER TABLE person2
    alter COLUMN person_name DROP NOT NULL;
-- add constraint
ALTER TABLE person2
    ADD constraint unique_person2_person_name UNIQUE(person_name);

-- delete constraint
ALTER TABLE person2
    DROP constraint UNIQUE_person2_person_name;

-- delete table 
DROP TABLE person3;

-- Get all data from table 
SELECT * FROM person2; 
-- delete all table records
 TRUNCATE table person; 
-- insert data
INSERT INTO person VALUES(1, 'Zannat', 22); 

SELECT * from person;