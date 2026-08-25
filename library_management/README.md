# DB Learning - Library Management Database

## 1. 概要

MySQLを使用して作成した図書館管理データベースです。

データベースの基本的な設計・構築・操作を学習することを目的として作成しました。

Javaで作成した図書館管理システムとは直接接続せず、

DB単体の学習成果物として作成しています。

---

## 2. 目的

以下のデータベース操作・SQLを学習し、

複数テーブルから必要な情報を取得・集計できることを目標としています。

- CREATE TABLE
- INSERT
- SELECT
- WHERE
- ORDER BY
- UPDATE
- DELETE
- JOIN
- GROUP BY

また、主キー（PRIMARY KEY）や外部キー（FOREIGN KEY）を使用した

複数テーブルのリレーション設計についても学習しました。

---

## 3. 使用技術

- MySQL 8.4
- Docker
- GitHub Codespaces

MySQLはDockerコンテナ上で起動しています。

データベース名：

`library_management`

---

## 4. データベース構成

本データベースでは、以下の4テーブルを使用しています。

### authors

著者情報を管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| author_id | INT | PRIMARY KEY, NOT NULL | 著者ID |
| author_name | VARCHAR(50) | NOT NULL | 著者名 |

---

### books

本の情報を管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| book_id | INT | PRIMARY KEY, NOT NULL | 本ID |
| isbn | VARCHAR(13) | NOT NULL, UNIQUE | ISBN |
| title | VARCHAR(100) | NOT NULL | 本のタイトル |
| author_id | INT | FOREIGN KEY, NOT NULL | 著者ID |
| genre | VARCHAR(30) | NOT NULL | ジャンル |
| published_date | DATE | NOT NULL | 出版日 |

---

### loans

本の貸出情報を管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| loan_id | INT | PRIMARY KEY, NOT NULL | 貸出ID |
| book_id | INT | FOREIGN KEY, NOT NULL | 本ID |
| member_id | INT | FOREIGN KEY, NOT NULL | 会員ID |
| loan_date | DATE | NOT NULL | 貸出日 |
| return_date | DATE | NULL | 返却日 |

---

### members

図書館の会員情報を管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| member_id | INT | PRIMARY KEY, NOT NULL | 会員ID |
| member_name | VARCHAR(50) | NOT NULL | 会員名 |
| email | VARCHAR(100) | NOT NULL, UNIQUE | メールアドレス |

---

## 5. 学習したSQL

- CREATE TABLE
- INSERT
- SELECT
- WHERE
- ORDER BY
- UPDATE
- DELETE
- JOIN
- GROUP BY

---

## 6. SQLファイル

| ファイル | 内容 |
|---|---|
| 01_create_tables.sql | データベース・テーブル作成 |
| 02_insert_data.sql | サンプルデータ登録 |
| 03_update_delete.sql | データ更新・削除 |
| 04_select.sql | SELECT・WHERE・ORDER BY |
| 05_join.sql | 複数テーブルのJOIN |
| 06_group_by.sql | GROUP BYによる集計 |

---

## 7. ER図

`diagram/er_diagram.png`

にER図を配置しています。

---

## 8. 実行環境

MySQL 8.4をDockerで起動し、GitHub Codespaces上でSQLを実行しています。

---

## 9. テーブル間の関係

テーブル間には以下のリレーションを設定しています。

```text
authors

   │

   │ 1 : N

   ↓

books

   │

   │ 1 : N

   ↓

loans

   ↑

   │ N : 1

members