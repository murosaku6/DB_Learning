USE db_learning;

SELECT
    tasks.task_id,
    tasks.task_name,
    users.user_name,
    categories.category_name,
    tasks.due_date,
    tasks.status
FROM tasks
JOIN users
    ON tasks.user_id = users.user_id
JOIN categories
    ON tasks.category_id = categories.category_id;