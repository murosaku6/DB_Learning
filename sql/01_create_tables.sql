CREATE DATABASE IF NOT EXISTS db_learning
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;

USE db_learning;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(30) NOT NULL
) CHARACTER SET utf8mb4;

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL
) CHARACTER SET utf8mb4;

CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    task_name VARCHAR(30) NOT NULL,
    due_date DATE NOT NULL,
    status VARCHAR(10) NOT NULL,
    user_id INT NOT NULL,
    category_id INT NOT NULL,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id),

    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
) CHARACTER SET utf8mb4;