SELECT * FROM student;

-- Group by country with count and average age
-- দেশ অনুযায়ী গ্রুপ করে, ছাত্রের সংখ্যা এবং গড় বয়স বের করা হবে
SELECT country, count(*), avg(age) FROM student
    GROUP BY country
    HAVING avg(age) > 25;
-- This query groups students by country and calculates the count of students and the average age for each country. It filters countries where the average age is greater than 25.
-- এই কোয়েরি দেশ অনুযায়ী ছাত্রদের গ্রুপ করবে এবং প্রতিটি দেশের জন্য ছাত্রের সংখ্যা এবং গড় বয়স গণনা করবে। 
-- এটি শুধুমাত্র সেসব দেশের জন্য ফলাফল দেখাবে যেখানে গড় বয়স ২৫ বছরের বেশি।

-- Count students born in each year
-- প্রতিটি বছরে জন্মগ্রহণ করা ছাত্রদের সংখ্যা গণনা করা হবে
SELECT extract(year FROM dateofbirth) as birth_year, count(*)
    FROM student
    GROUP BY birth_year;
-- This query extracts the year from the `dateofbirth` field and counts how many students were born in each year.
-- এই কোয়েরি `dateofbirth` ক্ষেত্র থেকে বছর বের করবে এবং প্রতি বছর কতজন ছাত্র জন্মগ্রহণ করেছে 
-- তা গণনা করবে।
