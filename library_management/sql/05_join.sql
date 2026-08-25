USE library_management;

SET NAMES utf8mb4;

-- JOIN

-- 貸出情報と本のタイトル、会員名を取得
SELECT
    loans.loan_id,
    members.member_name,
    books.title,
    loans.loan_date,
    loans.return_date
FROM loans
JOIN members
    ON loans.member_id = members.member_id
JOIN books
    ON loans.book_id = books.book_id;


-- 3テーブルJOIN

-- 貸出情報・本・著者を取得
SELECT
    loans.loan_id,
    books.title,
    authors.author_name,
    loans.loan_date,
    loans.return_date
FROM loans
JOIN books
    ON loans.book_id = books.book_id
JOIN authors
    ON books.author_id = authors.author_id;


-- 4テーブルJOIN

-- 会員・本・著者・貸出情報をまとめて取得
SELECT
    loans.loan_id,
    members.member_name,
    books.title,
    authors.author_name,
    books.genre,
    loans.loan_date,
    loans.return_date
FROM loans
JOIN members
    ON loans.member_id = members.member_id
JOIN books
    ON loans.book_id = books.book_id
JOIN authors
    ON books.author_id = authors.author_id;


-- JOIN + WHERE

-- 現在貸出中の本だけ取得
SELECT
    members.member_name,
    books.title,
    authors.author_name,
    loans.loan_date
FROM loans
JOIN members
    ON loans.member_id = members.member_id
JOIN books
    ON loans.book_id = books.book_id
JOIN authors
    ON books.author_id = authors.author_id
WHERE loans.return_date IS NULL;


-- JOIN + WHERE + ORDER BY

-- 現在貸出中の本を貸出日の新しい順に取得
SELECT
    members.member_name,
    books.title,
    authors.author_name,
    loans.loan_date
FROM loans
JOIN members
    ON loans.member_id = members.member_id
JOIN books
    ON loans.book_id = books.book_id
JOIN authors
    ON books.author_id = authors.author_id
WHERE loans.return_date IS NULL
ORDER BY loans.loan_date DESC;