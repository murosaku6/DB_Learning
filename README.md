# DB Learning - Task Management Database

## 概要

MySQLを使用して作成したタスク管理データベースです。

DBの基本操作および複数テーブルを使用したSQLの学習を目的として作成しました。

## 使用技術

- MySQL 8.4
- Docker
- GitHub Codespaces

## データベース

データベース名：

`db_learning`

## テーブル構成

### users

ユーザー情報を管理するテーブルです。

| カラム | 型 | 制約 |
|---|---|---|
| user_id | INT | PRIMARY KEY |
| user_name | VARCHAR(30) | NOT NULL |

### categories

タスクのカテゴリを管理するテーブルです。

| カラム | 型 | 制約 |
|---|---|---|
| category_id | INT | PRIMARY KEY |
| category_name | VARCHAR(30) | NOT NULL |

### tasks

タスク情報を管理するテーブルです。

| カラム | 型 | 制約 |
|---|---|---|
| task_id | INT | PRIMARY KEY |
| task_name | VARCHAR(30) | NOT NULL |
| due_date | DATE | NOT NULL |
| status | VARCHAR(10) | NOT NULL |
| user_id | INT | FOREIGN KEY |
| category_id | INT | FOREIGN KEY |

## 学習したSQL

- CREATE TABLE
- INSERT
- SELECT
- WHERE
- ORDER BY
- UPDATE
- DELETE
- JOIN
- GROUP BY

## SQLファイル

| ファイル | 内容 |
|---|---|
| 01_create_tables.sql | データベース・テーブル作成 |
| 02_insert_data.sql | サンプルデータ登録 |
| 03_update_delete.sql | データ更新・削除 |
| 04_select.sql | SELECT・WHERE・ORDER BY |
| 05_join.sql | 複数テーブルのJOIN |
| 06_group_by.sql | GROUP BYによる集計 |

## ER図

`diagram/er_diagram.png`

にER図を配置しています。

## 実行環境

MySQL 8.4をDockerで起動し、GitHub Codespaces上でSQLを実行しています。