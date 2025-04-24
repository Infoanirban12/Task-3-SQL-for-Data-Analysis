SELECT 
    u.user_id,
    u.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_revenue
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id;
