CREATE DATABASE IF NOT EXISTS library_management
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;

USE library_management;

SET NAMES utf8mb4;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50) NOT NULL
) CHARACTER SET utf8mb4;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    title VARCHAR(100) NOT NULL,
    author_id INT NOT NULL,
    genre VARCHAR(30) NOT NULL,
    published_date DATE NOT NULL,

    FOREIGN KEY (author_id)
        REFERENCES authors(author_id)
) CHARACTER SET utf8mb4;

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
) CHARACTER SET utf8mb4;

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,

    FOREIGN KEY (book_id)
        REFERENCES books(book_id),

    FOREIGN KEY (member_id)
        REFERENCES members(member_id)
) CHARACTER SET utf8mb4;