
E-commerce Platform এবং Online Education Platform-এর জন্য বাস্তব জীবনের Essential Complex Query-এর উদাহরণ (বাংলা ব্যাখ্যাসহ)
E-commerce Platform Queries
1. একজন কাস্টমার কত টাকা খরচ করেছেন তা বের করা
👉 আমরা orders এবং order_items টেবিলের মাধ্যমে কাস্টমারের মোট অর্ডারের খরচ বের করতে পারি।

sql
Copy code
SELECT 
    c.customer_name, 
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM 
    customers c
JOIN 
    orders o 
ON 
    c.customer_id = o.customer_id
JOIN 
    order_items oi 
ON 
    o.order_id = oi.order_id
GROUP BY 
    c.customer_name
ORDER BY 
    total_spent DESC; -- সর্বোচ্চ খরচ অনুযায়ী সাজানো
ব্যাখ্যা:
এই কুইরিতে, আমরা প্রতিটি কাস্টমারের মোট খরচ বের করেছি। quantity * unit_price দিয়ে প্রতিটি অর্ডারের খরচ বের করেছি এবং সবগুলো যোগ করেছি।

2. সবচেয়ে বেশি বিক্রি হওয়া পণ্যের নাম এবং বিক্রির সংখ্যা
👉 কোন পণ্যটি সবচেয়ে বেশি বিক্রি হয়েছে, তা বের করতে পারি।

sql
Copy code
SELECT 
    p.product_name, 
    SUM(oi.quantity) AS total_sold
FROM 
    products p
JOIN 
    order_items oi 
ON 
    p.product_id = oi.product_id
GROUP BY 
    p.product_name
ORDER BY 
    total_sold DESC
LIMIT 1; -- শীর্ষ ১ পণ্য
ব্যাখ্যা:
এই কুইরি SUM(oi.quantity) দিয়ে প্রতিটি পণ্যের বিক্রির পরিমাণ যোগ করে এবং সর্বোচ্চ বিক্রি হওয়া পণ্যটি দেখায়।

3. স্টকে কম থাকা পণ্য খুঁজে বের করা (Low Stock Products)
👉 যেসব পণ্যের স্টক সীমার নিচে নেমে গেছে, সেগুলো বের করার জন্য:

sql
Copy code
SELECT 
    product_name, 
    stock_quantity
FROM 
    products
WHERE 
    stock_quantity < 10; -- ১০ এর কম স্টক
ব্যাখ্যা:
এই কুইরিতে স্টকে থাকা পরিমাণ (stock_quantity) চেক করা হচ্ছে। যেসব পণ্য ১০ এর কম রয়েছে সেগুলো লিস্ট হচ্ছে।

4. কাস্টমার যারা এক মাসে একাধিকবার অর্ডার করেছেন
👉 একই কাস্টমার এক মাসে একাধিকবার অর্ডার করেছেন কিনা, তা বের করতে:

sql
Copy code
SELECT 
    c.customer_name, 
    COUNT(DISTINCT o.order_id) AS total_orders, 
    EXTRACT(MONTH FROM o.order_date) AS order_month
FROM 
    customers c
JOIN 
    orders o 
ON 
    c.customer_id = o.customer_id
GROUP BY 
    c.customer_name, EXTRACT(MONTH FROM o.order_date)
HAVING 
    COUNT(DISTINCT o.order_id) > 1; -- এক মাসে ১টির বেশি অর্ডার
ব্যাখ্যা:
এখানে EXTRACT(MONTH FROM o.order_date) ব্যবহার করে এক মাসের ভিতরে অর্ডারের সংখ্যা বের করা হয়েছে এবং একাধিক অর্ডার করেছেন এমন কাস্টমারদের দেখানো হয়েছে।

5. সবচেয়ে বেশি লাভজনক পণ্য বের করা
👉 কোন পণ্যটি বেশি লাভজনক তা বের করতে:

sql
Copy code
SELECT 
    p.product_name, 
    SUM((oi.unit_price - p.cost_price) * oi.quantity) AS total_profit
FROM 
    products p
JOIN 
    order_items oi 
ON 
    p.product_id = oi.product_id
GROUP BY 
    p.product_name
ORDER BY 
    total_profit DESC
LIMIT 1;
ব্যাখ্যা:
unit_price - cost_price দিয়ে একক লাভ বের করা হয়েছে এবং এটি বিক্রির পরিমাণ দিয়ে গুণ করে মোট লাভ দেখানো হয়েছে।

Online Education Platform Queries
1. স্টুডেন্টদের মোট কোর্স কেনার পরিমাণ এবং ব্যয় বের করা
👉 একজন স্টুডেন্ট কতগুলো কোর্স কিনেছেন এবং মোট কত টাকা খরচ করেছেন তা বের করতে:

sql
Copy code
SELECT 
    s.student_name, 
    COUNT(ec.course_id) AS total_courses_purchased, 
    SUM(c.price) AS total_spent
FROM 
    students s
JOIN 
    enrolled_courses ec 
ON 
    s.student_id = ec.student_id
JOIN 
    courses c 
ON 
    ec.course_id = c.course_id
GROUP BY 
    s.student_name
ORDER BY 
    total_spent DESC; -- ব্যয়ের পরিমাণ অনুযায়ী সাজানো
ব্যাখ্যা:
প্রতিটি স্টুডেন্টের কতগুলো কোর্স এবং মোট খরচ COUNT এবং SUM দিয়ে বের করা হয়েছে।

2. সবচেয়ে জনপ্রিয় কোর্স এবং কতজন স্টুডেন্ট এনরোল করেছেন তা বের করা
👉 কোন কোর্সটি সবচেয়ে বেশি স্টুডেন্ট এনরোল করেছে তা খুঁজতে:

sql
Copy code
SELECT 
    c.course_name, 
    COUNT(ec.student_id) AS total_enrolled
FROM 
    courses c
JOIN 
    enrolled_courses ec 
ON 
    c.course_id = ec.course_id
GROUP BY 
    c.course_name
ORDER BY 
    total_enrolled DESC
LIMIT 1; -- সর্বাধিক জনপ্রিয় কোর্স
ব্যাখ্যা:
COUNT(ec.student_id) দিয়ে প্রতিটি কোর্সের এনরোলমেন্ট সংখ্যা বের করা হয়েছে এবং সর্বোচ্চটি দেখানো হয়েছে।

3. স্টুডেন্টরা যেসব কোর্সে ব্যর্থ হয়েছেন (Fail)
👉 স্টুডেন্টরা কোন কোন কোর্সে ব্যর্থ হয়েছেন তা বের করতে:

sql
Copy code
SELECT 
    s.student_name, 
    c.course_name, 
    g.grade
FROM 
    students s
JOIN 
    grades g 
ON 
    s.student_id = g.student_id
JOIN 
    courses c 
ON 
    g.course_id = c.course_id
WHERE 
    g.grade < 50; -- পাস মার্কের নিচে
ব্যাখ্যা:
grades টেবিল থেকে grade < 50 চেক করে ব্যর্থ হওয়া কোর্সগুলো দেখানো হয়েছে।

4. প্রতিটি কোর্সের গড় রেটিং বের করা
👉 শিক্ষার্থীদের রেটিং অনুযায়ী প্রতিটি কোর্সের গড় রেটিং বের করতে:

sql
Copy code
SELECT 
    c.course_name, 
    AVG(r.rating) AS average_rating
FROM 
    courses c
JOIN 
    reviews r 
ON 
    c.course_id = r.course_id
GROUP BY 
    c.course_name
ORDER BY 
    average_rating DESC; -- রেটিং অনুযায়ী সাজানো
ব্যাখ্যা:
AVG(r.rating) দিয়ে প্রতিটি কোর্সের গড় রেটিং দেখানো হয়েছে।

5. প্রতিটি শিক্ষক কতগুলো কোর্স তৈরি করেছেন তা বের করা
👉 শিক্ষকদের কোর্স তৈরির সংখ্যা দেখতে:

sql
Copy code
SELECT 
    t.teacher_name, 
    COUNT(c.course_id) AS total_courses_created
FROM 
    teachers t
JOIN 
    courses c 
ON 
    t.teacher_id = c.teacher_id
GROUP BY 
    t.teacher_name
ORDER BY 
    total_courses_created DESC;
ব্যাখ্যা:
প্রতিটি শিক্ষকের তৈরি করা কোর্সের সংখ্যা COUNT দিয়ে বের করা হয়েছে।