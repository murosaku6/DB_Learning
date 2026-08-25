USE library_management;

SET NAMES utf8mb4;

-- SELECT

-- すべての本を取得
SELECT *
FROM books;

-- WHERE

-- 「技術」ジャンルの本だけ取得
SELECT *
FROM books
WHERE genre = '技術';


-- 貸出中の貸出情報を取得
-- return_date が NULL = まだ返却されていない
SELECT *
FROM loans
WHERE return_date IS NULL;


-- 返却済みの貸出情報を取得
SELECT *
FROM loans
WHERE return_date IS NOT NULL;


-- ORDER BY

-- 出版日が新しい本から順番に取得
SELECT *
FROM books
ORDER BY published_date DESC;


-- 出版日が古い本から順番に取得
SELECT *
FROM books
ORDER BY published_date ASC;


-- 本のタイトルをアルファベット順に並べる
SELECT *
FROM books
ORDER BY title ASC;