USE db_learning;

SET NAMES utf8mb4;

-- すべてのタスクを取得
SELECT *
FROM tasks;

-- WHERE：完了したタスクを取得
SELECT *
FROM tasks
WHERE status = '完了';

-- WHERE：特定のユーザーのタスクを取得
SELECT *
FROM tasks
WHERE user_id = 1;

-- ORDER BY：期限が早い順に並べる
SELECT *
FROM tasks
ORDER BY due_date ASC;

-- ORDER BY：期限が遅い順に並べる
SELECT *
FROM tasks
ORDER BY due_date DESC;

-- WHERE + ORDER BY：未完了のタスクを期限が早い順に取得
SELECT *
FROM tasks
WHERE status = '未完了'
ORDER BY due_date ASC;