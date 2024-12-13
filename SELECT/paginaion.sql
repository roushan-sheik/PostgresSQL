-- Skip first 2 students and give me 5 students
-- প্রথম ২ জন ছাত্র বাদ দিয়ে ৫ জন ছাত্র দেখানো হবে
SELECT * FROM student LIMIT 5 OFFSET 2;

-- Pagination =============>
-- Pagination allows fetching data in chunks or pages, typically used for large datasets.

-- Page number 0 (first page, skips 0 rows)
-- পেজ নম্বর ০ (প্রথম পেজ, ০টি রো স্কিপ করা হবে)
SELECT * FROM student LIMIT 5 OFFSET 5 * 0; -- page no: 0

-- Page number 1 (second page, skips 5 rows)
-- পেজ নম্বর ১ (দ্বিতীয় পেজ, ৫টি রো স্কিপ করা হবে)
SELECT * FROM student LIMIT 5 OFFSET 5 * 1; -- page no: 1

-- Page number 2 (third page, skips 10 rows)
-- পেজ নম্বর ২ (তৃতীয় পেজ, ১০টি রো স্কিপ করা হবে)
SELECT * FROM student LIMIT 5 OFFSET 5 * 2; -- page no: 2

-- Page number 3 (fourth page, skips 15 rows)
-- পেজ নম্বর ৩ (চতুর্থ পেজ, ১৫টি রো স্কিপ করা হবে)
SELECT * FROM student LIMIT 5 OFFSET 5 * 3; -- page no: 3
