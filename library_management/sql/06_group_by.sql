USE library_management;

SET NAMES utf8mb4;

-- GROUP BY

-- ジャンルごとの本の冊数
SELECT
    genre,
    COUNT(*) AS book_count
FROM books
GROUP BY genre;


-- 著者ごとの本の冊数

SELECT
    authors.author_name,
    COUNT(books.book_id) AS book_count
FROM authors
JOIN books
    ON authors.author_id = books.author_id
GROUP BY authors.author_id, authors.author_name;


-- 会員ごとの貸出回数

SELECT
    members.member_name,
    COUNT(loans.loan_id) AS loan_count
FROM members
JOIN loans
    ON members.member_id = loans.member_id
GROUP BY members.member_id, members.member_name;


-- 会員ごとの貸出回数を多い順に表示

SELECT
    members.member_name,
    COUNT(loans.loan_id) AS loan_count
FROM members
JOIN loans
    ON members.member_id = loans.member_id
GROUP BY members.member_id, members.member_name
ORDER BY loan_count DESC;


-- 著者ごとの本の冊数を多い順に表示

SELECT
    authors.author_name,
    COUNT(books.book_id) AS book_count
FROM authors
JOIN books
    ON authors.author_id = books.author_id
GROUP BY authors.author_id, authors.author_name
ORDER BY book_count DESC;