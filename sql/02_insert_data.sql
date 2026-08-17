USE db_learning;

INSERT INTO users (user_id, user_name) VALUES
(1, '田中太郎'),
(2, '佐藤花子'),
(3, '鈴木一郎');

INSERT INTO categories (category_id, category_name) VALUES
(1, '勉強'),
(2, '仕事'),
(3, '趣味');

INSERT INTO tasks
(task_id, task_name, due_date, status, user_id, category_id)
VALUES
(1, 'SQLを勉強する', '2026-08-20', '未完了', 1, 1),
(2, '資料を作成する', '2026-08-18', '進行中', 2, 2),
(3, '本を読む', '2026-08-25', '未完了', 1, 3),
(4, 'Javaの復習', '2026-08-22', '完了', 3, 1),
(5, '買い物をする', '2026-08-19', '未完了', 2, 3);