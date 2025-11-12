------calling out a table Limit to 10 lines
SELECT
  *
FROM
  "BRIGHT_COFFEE"."PUBLIC"."COFFEESHOP"
LIMIT
  10;


-------distinct store location

SELECT DISTINCT store_location
FROM "BRIGHT_COFFEE"."PUBLIC"."COFFEESHOP"

--------distinct product category

SELECT DISTINCT product_category
FROM "BRIGHT_COFFEE"."PUBLIC"."COFFEESHOP"

--------first operating date of this dataset

SELECT MIN (transaction_date) AS first_operating_date
FROM "BRIGHT_COFFEE"."PUBLIC"."COFFEESHOP"

--------last operating date of this dataset

SELECT MAX (transaction_date) AS last_operating_date
FROM "BRIGHT_COFFEE"."PUBLIC"."COFFEESHOP"

--------creating a  day_name from the date of this dataset

SELECT transaction_date,
        DAYNAME(transaction_date)AS  day_name
FROM "BRIGHT_COFFEE"."PUBLIC"."COFFEESHOP"

----------



SELECT transaction_date,
        DAYNAME(transaction_date)AS  day_name,
        CASE
            WHEN day_name IN ('Sun','Sat') THEN 'Weekend'
            ELSE 'Weekday'
         END AS day_classification,
         MONTHNAME(transaction_date)AS month_name,
         transaction_time,
        CASE
            WHEN transaction_time BETWEEN '06:00:00 ' AND '11:59:00' THEN 'Morning'
            WHEN transaction_time BETWEEN '12:00:00 ' AND '16:59:59' THEN 'Afternoon'
            WHEN transaction_time >= '17:00:00' THEN 'Evening'
        END AS time_bucket,
        CASE
            WHEN EXTRACT(MONTH from transaction_date) IN (1,2,3) THEN 'Summer'
            WHEN EXTRACT(MONTH from transaction_date) IN (4,5) THEN 'Autumn'
            WHEN EXTRACT(MONTH from transaction_date) IN (6) THEN 'Winter'
