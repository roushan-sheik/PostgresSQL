What is PostgreSQL?
PostgreSQL is an open-source, object-relational database management system (ORDBMS) known for its extensibility and compliance with SQL standards.
Bangla Note: PostgreSQL একটি ওপেন-সোর্স রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম, যা SQL স্ট্যান্ডার্ড মেনে চলে।

What is the purpose of a database schema in PostgreSQL?
A schema is a logical structure to organize database objects like tables and views, providing better management and security.
Bangla Note: স্কিমা ডেটাবেস অবজেক্টগুলো (যেমন টেবিল ও ভিউ) সংগঠিত করে সহজে ব্যবস্থাপনার জন্য ব্যবহৃত হয়।

Explain the primary key and foreign key concepts in PostgreSQL.

A primary key uniquely identifies a record in a table.
A foreign key ensures referential integrity by linking to a primary key in another table.
Bangla Note: প্রাইমারি কি একটি টেবিলের রেকর্ডকে ইউনিক করে এবং ফরেন কি অন্য টেবিলের প্রাইমারি কি-র সাথে সংযোগ স্থাপন করে।
What is the difference between the VARCHAR and CHAR data types?

VARCHAR: Variable-length string, more flexible and efficient for varying data.
CHAR: Fixed-length string, suitable for data with a consistent size.
Bangla Note: VARCHAR ভ্যারিয়েবল-লেংথ ডেটার জন্য এবং CHAR ফিক্সড-লেংথ ডেটার জন্য ব্যবহৃত হয়।
Explain the purpose of the WHERE clause in a SELECT statement.
The WHERE clause filters records that meet a specified condition.
Bangla Note: WHERE ক্লজ শর্ত পূরণ করা রেকর্ডগুলো ফিল্টার করতে ব্যবহৃত হয়।

What are the LIMIT and OFFSET clauses used for?

LIMIT: Restricts the number of rows returned.
OFFSET: Skips a specified number of rows before starting to return rows.
Bangla Note: LIMIT রেকর্ড সংখ্যা সীমিত করে এবং OFFSET নির্দিষ্ট সংখ্যক রেকর্ড বাদ দিয়ে দেখায়।
How can you perform data modification using UPDATE statements?
The UPDATE statement modifies existing records in a table.
Bangla Note: UPDATE স্টেটমেন্ট দিয়ে টেবিলের বিদ্যমান ডেটা পরিবর্তন করা যায়।

What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN combines rows from two or more tables based on a related column.
Bangla Note: JOIN অপারেশন একাধিক টেবিলের রেকর্ড একসাথে যুক্ত করতে ব্যবহৃত হয়।

Explain the GROUP BY clause and its role in aggregation operations.
GROUP BY groups rows sharing a property, enabling aggregate functions like COUNT, SUM, and AVG.
Bangla Note: GROUP BY এক বা একাধিক কলামের উপর ভিত্তি করে রেকর্ড গ্রুপ করে।

How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
These functions operate on a set of values, returning a single value (e.g., COUNT(*), SUM(column), AVG(column)).
Bangla Note: COUNT, SUM, এবং AVG একটি কলামের উপরে গণনা করতে ব্যবহৃত হয়।

What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
Indexes speed up data retrieval by providing a fast lookup mechanism.
Bangla Note: ইনডেক্স দ্রুত ডেটা রিটার্ভাল নিশ্চিত করে।

Explain the concept of a PostgreSQL view and how it differs from a table.
A view is a virtual table based on a SQL query, whereas a table stores physical data.
Bangla Note: ভিউ একটি ভার্চুয়াল টেবিল যা একটি SQL কোয়েরি থেকে তৈরি হয়, টেবিল ডেটা সংরক্ষণ করে।