CREATE VIEW user_revenue_view AS
SELECT 
    u.user_id,
    u.name,
    SUM(o.total_amount) AS revenue
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id;
