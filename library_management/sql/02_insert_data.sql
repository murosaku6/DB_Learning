USE library_management;

SET NAMES utf8mb4;

-- 著者
INSERT INTO authors (author_id, author_name) VALUES
(1, '山田太郎'),
(2, '佐藤花子'),
(3, '鈴木一郎'),
(4, '田中美咲');

-- 本
INSERT INTO books
(book_id, isbn, title, author_id, genre, published_date)
VALUES
(1, '9780000000001', 'SQL入門', 1, '技術', '2024-04-01'),
(2, '9780000000002', 'Javaプログラミング', 2, '技術', '2023-10-15'),
(3, '9780000000003', 'データベース基礎', 1, '技術', '2022-06-20'),
(4, '9780000000004', '小説・夏の日', 3, '小説', '2021-08-10'),
(5, '9780000000005', 'Python入門', 4, '技術', '2025-01-20'),
(6, '9780000000006', 'ミステリー事件簿', 3, 'ミステリー', '2020-11-05');

-- 会員
INSERT INTO members
(member_id, member_name, email)
VALUES
(1, '田中太郎', 'tanaka@example.com'),
(2, '佐藤花子', 'sato@example.com'),
(3, '鈴木一郎', 'suzuki@example.com'),
(4, '高橋美咲', 'takahashi@example.com');

-- 貸出履歴
INSERT INTO loans
(loan_id, book_id, member_id, loan_date, return_date)
VALUES
(1, 1, 1, '2026-08-01', '2026-08-05'),
(2, 2, 2, '2026-08-03', '2026-08-10'),
(3, 3, 1, '2026-08-05', NULL),
(4, 4, 3, '2026-08-07', '2026-08-12'),
(5, 5, 4, '2026-08-10', NULL),
(6, 6, 2, '2026-08-12', '2026-08-18'),
(7, 1, 3, '2026-08-15', NULL);