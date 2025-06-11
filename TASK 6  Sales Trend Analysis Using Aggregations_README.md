# Task 6: Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze **monthly revenue** and **order volume** to identify sales trends over time.

---

## 🧰 Tools Used
- SQLite
- DB Browser for SQLite

---

## 📂 Dataset
**Table name:** `online_sales_dataset`  
The dataset includes fields like:
- `field1`: order_id  
- `field5`: order_date  
- `field11`: revenue (amount)

---

## 📊 SQL Query

```sql
SELECT 
    strftime('%Y-%m', field5) AS month,
    SUM(field11) AS total_revenue,
    COUNT(DISTINCT field1) AS order_volume
FROM online_sales_dataset
WHERE field5 IS NOT NULL
GROUP BY month
ORDER BY month;
