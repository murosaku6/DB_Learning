USE db_learning;

SELECT
    users.user_name,
    COUNT(tasks.task_id) AS task_count
FROM users
JOIN tasks
    ON users.user_id = tasks.user_id
GROUP BY users.user_id, users.user_name;