-- 1-mashq
SELECT 
    order_date,
    COUNT(order_id) AS orders_count,
    SUM(amount) AS daily_sales
FROM orders
GROUP BY order_date
ORDER BY order_date;
-- 2-mashq
SELECT 
    c.customer_id,
    c.name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(o.order_id) = 1;
