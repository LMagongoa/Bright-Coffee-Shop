------extracting the table from the database limited to 10 rows
SELECT*
FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP
LIMIT 10;

-----a list of different stores
SELECT DISTINCT store_location
FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP

-----a list of different types of products
SELECT DISTINCT product_category
FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP

-----first day a of operation
SELECT MIN (transaction_date) AS first_operating_date
FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP

-----last day a of operation
SELECT MAX (transaction_date) AS last_operating_date
FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP

----day_name from tansaction date
SELECT transaction_date,
        DAYNAME(transaction_date)AS  day_name
FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP

------syntax to classify weekend/weekday, time_buckets,hour_of_day,calculate revenue
SELECT transaction_date,
        DAYNAME(transaction_date)AS  day_name,
        CASE
            WHEN day_name IN ('Sun','Sat') THEN 'Weekend'
            ELSE 'Weekday'
         END AS day_classification,
         MONTHNAME(transaction_date)AS month_name,
         transaction_time,
        CASE
            WHEN transaction_time BETWEEN ' 06:00:00 ' AND '11:59:00' THEN 'Morning'
            WHEN transaction_time BETWEEN ' 12:00:00 ' AND '16:59:59' THEN 'Afternoon'
            WHEN transaction_time >= '17:00:00' THEN 'Evening'
        END AS time_bucket,
        HOUR(transaction_time)AS hour_of_day,   
        store_location,
        product_category,
        product_detail,
        product_type,
        transaction_qty,
        COUNT (DISTINCT transaction_id) AS number_of_sales,
        SUM(transaction_qty*unit_price) AS Revenue    
    FROM BRIGHTCOFFEESHOP.PUBLIC.COFFEESHOP
    GROUP BY ALL;
