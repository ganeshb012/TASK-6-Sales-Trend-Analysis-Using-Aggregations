SELECT 
    strftime('%Y-%m', field5) AS month,
    SUM(field11) AS total_revenue,
    COUNT(DISTINCT field1) AS order_volume
FROM online_sales_dataset
WHERE field5 IS NOT NULL                   
GROUP BY month
ORDER BY month;
