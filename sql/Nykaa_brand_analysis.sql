--Q1: THE DISCOUNT TRAP
--(Brands with above-average discount but below-average rating)
SELECT brand_name , AVG(discount_pct) as avg_discount,
AVG(rating) as avg_rating, COUNT(*) as product_count
FROM brands
group BY brand_name
HAVING avg_discount>(SELECT avg(discount_pct) from brands)
    AND avg_rating<(SELECT avg(rating) from brands)
ORDER BY avg_discount DESC
LIMIT 10;

--Q2: THE STOCKOUT SIGNAL
--(Compare average rating and rating_count for in-stock vs out-of-stock products)
SELECT in_stock, avg(rating) as avg_rating,
avg(rating_count) as avg_rating_count,
count(*) as product_count
FROM brands
group by in_stock ;

--Q3: THE MERCHANDISING AUDIT 
--(Do FEATURED/ BESTSELLER tags actually correspond to better performance?)
SELECT tags,
AVG(rating) AS avg_rating,
AVG(rating_count) AS avg_rating_count,
COUNT(*) AS product_count
FROM brands
GROUP BY tags
ORDER BY avg_rating_count DESC;

--Q4: THE VISIBILITY BIAS 
--(Does the listing position correlate with attention(rating_count), independent of quality?)
SELECT listing_page_no ,
       avg(rating_count) as avg_rating_count,
       avg(rating) as avg_rating,
       count(*) as product_count
FROM brands
GROUP BY listing_page_no
ORDER BY listing_page_no
LIMIT 20;

-- SUPPORTING QUERIES

-- Rank products within each brand by rating (window function)
SELECT brand_name, product_title, rating,
RANK() OVER (PARTITION BY brand_name ORDER BY rating DESC) AS brand_rank
FROM brands;

-- High price, low attention products (inventory risk)
SELECT product_title, brand_name, price, rating_count
FROM brands
WHERE price > (SELECT AVG(price) FROM brands)
AND rating_count < 20
ORDER BY price DESC
LIMIT 15;

-- Price segment vs average rating
SELECT
CASE
WHEN price < 300 THEN 'Budget'
WHEN price BETWEEN 300 AND 800 THEN 'Mid-range'
ELSE 'Premium'
END AS price_segment,
AVG(rating) AS avg_rating,
COUNT(*) AS product_count
FROM brands
GROUP BY price_segment;