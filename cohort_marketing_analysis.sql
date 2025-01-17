WITH cte AS (SELECT
"InvoiceNo" AS invoice_nu,
"CustomerID" AS customer_id, 
"InvoiceDate" AS invoice_date, 
"Country" AS country,
TO_DATE(TO_CHAR("InvoiceDate",'YYYY-MM') || '-01', 'YYYY-MM-DD') AS invoice_month, 
MIN(TO_DATE(TO_CHAR("InvoiceDate",'YYYY-MM') || '-01', 'YYYY-MM-DD')) OVER(PARTITION BY "CustomerID") AS cohort_month
FROM online_retail),

cohort_result AS (SELECT
cohort_month,
(EXTRACT(YEAR FROM invoice_month) - EXTRACT(YEAR FROM cohort_month))::INTEGER * 12 +
(EXTRACT(MONTH FROM invoice_month) - EXTRACT(MONTH FROM cohort_month))::INTEGER +1 
AS cohort_index, 
COUNT(DISTINCT customer_id) AS unique_users
FROM cte
GROUP BY 1, 2),

cohort_table AS (SELECT
cohort_month, 
SUM(CASE WHEN cohort_index = 1 THEN unique_users ELSE 0 END) AS index_1,
SUM(CASE WHEN cohort_index = 2 THEN unique_users ELSE 0 END) AS index_2,
SUM(CASE WHEN cohort_index = 3 THEN unique_users ELSE 0 END) AS index_3,
SUM(CASE WHEN cohort_index = 4 THEN unique_users ELSE 0 END) AS index_4,
SUM(CASE WHEN cohort_index = 5 THEN unique_users ELSE 0 END) AS index_5,
SUM(CASE WHEN cohort_index = 6 THEN unique_users ELSE 0 END) AS index_6,
SUM(CASE WHEN cohort_index = 7 THEN unique_users ELSE 0 END) AS index_7,
SUM(CASE WHEN cohort_index = 8 THEN unique_users ELSE 0 END) AS index_8,
SUM(CASE WHEN cohort_index = 9 THEN unique_users ELSE 0 END) AS index_9,
SUM(CASE WHEN cohort_index = 10 THEN unique_users ELSE 0 END) AS index_10,
SUM(CASE WHEN cohort_index = 11 THEN unique_users ELSE 0 END) AS index_11,
SUM(CASE WHEN cohort_index = 12 THEN unique_users ELSE 0 END) AS index_12,
SUM(CASE WHEN cohort_index = 13 THEN unique_users ELSE 0 END) AS index_13
FROM cohort_result
GROUP BY 1)


SELECT
*
FROM cohort_table





