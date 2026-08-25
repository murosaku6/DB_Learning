# DB Learning - Task Management Database

## 1. 概要

MySQLを使用して作成したタスク管理データベースです。

データベースの基本的な設計・構築・操作を学習することを目的として作成しました。

Javaで作成したタスク管理システムとは直接接続せず、
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

`db_learning`

---

## 4. データベース構成

本データベースでは、以下の3テーブルを使用しています。

### users

ユーザー情報を管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| user_id | INT | PRIMARY KEY, NOT NULL | ユーザーID |
| user_name | VARCHAR(30) | NOT NULL | ユーザー名 |

---

### categories

タスクのカテゴリを管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| category_id | INT | PRIMARY KEY, NOT NULL | カテゴリID |
| category_name | VARCHAR(30) | NOT NULL | カテゴリ名 |

---

### tasks

タスク情報を管理するテーブルです。

| カラム | データ型 | 制約 | 説明 |
|---|---|---|---|
| task_id | INT | PRIMARY KEY, NOT NULL | タスクID |
| task_name | VARCHAR(30) | NOT NULL | タスク名 |
| due_date | DATE | NOT NULL | 期限 |
| status | VARCHAR(10) | NOT NULL | タスクの状態 |
| user_id | INT | FOREIGN KEY, NOT NULL | 担当ユーザーID |
| category_id | INT | FOREIGN KEY, NOT NULL | カテゴリID |

---

## 5. テーブル間の関係

テーブル間には以下のリレーションを設定しています。

```text
users
  │
  │ 1 : N
  ↓
tasks
  │
  │ N : 1
  ↓
categories