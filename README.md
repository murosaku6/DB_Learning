# DB Learning

MySQLを使用したデータベース・SQL学習用の成果物です。

本プロジェクトでは、複数の題材を使ってデータベースの設計からSQLの作成・実行までを学習します。

## 1. 目的

このプロジェクトでは、以下のデータベースを作成しながら、データベースに関する基礎的な知識とSQLの操作方法を身につけることを目的としています。

* テーブル設計
* 主キー・外部キー
* テーブル間のリレーション
* CREATE TABLE
* INSERT
* SELECT
* WHERE
* ORDER BY
* UPDATE
* DELETE
* JOIN
* GROUP BY
* ER図の作成

作成したデータベースはJavaのシステムとは直接接続せず、データベース単体の設計・SQL学習用の成果物として作成します。

---

## 2. 使用環境

* MySQL 8.4
* Docker
* Docker Compose
* GitHub Codespaces
* SQL

MySQLはDocker Composeを使用して起動します。

---

## 3. データベース一覧

現在、以下の3つのデータベースを作成する予定です。

| データベース                | 内容              | 状態   |
| --------------------- | --------------- | ---- |
| Task Management DB    | タスクの管理          | 完成   |
| Library Management DB | 図書館・本・利用者・貸出の管理 | 作成予定 |
| Grade Management DB   | 学生・科目・成績の管理     | 作成予定 |

---

## 4. ディレクトリ構成

現在のプロジェクトは以下の構成です。

```text
DB_Learning/
│
├── compose.yaml
├── README.md
│
├── task_management/
│   ├── sql/
│   │   ├── 01_create_tables.sql
│   │   ├── 02_insert_data.sql
│   │   ├── 03_update_delete.sql
│   │   ├── 04_select.sql
│   │   ├── 05_join.sql
│   │   └── 06_group_by.sql
│   │
│   └── diagram/
│       └── er_diagram.png
│
├── library_management/
│   ├── sql/
│   └── diagram/
│
└── grade_management/
    ├── sql/
    └── diagram/
```

---

## 5. SQLファイルについて

各データベースでは、基本的に以下の順番でSQLを作成します。

### 01_create_tables.sql

データベースで使用するテーブルを作成します。

主に以下のSQLを使用します。

```sql
CREATE TABLE
```

---

### 02_insert_data.sql

作成したテーブルに初期データを登録します。

```sql
INSERT INTO
```

---

### 03_update_delete.sql

登録したデータを変更・削除します。

```sql
UPDATE
DELETE
```

---

### 04_select.sql

データを検索・取得します。

```sql
SELECT
WHERE
ORDER BY
```

---

### 05_join.sql

複数のテーブルを結合してデータを取得します。

```sql
JOIN
```

---

### 06_group_by.sql

データをグループ化・集計します。

```sql
GROUP BY
COUNT
SUM
AVG
```

---

## 6. タスク管理DB

タスク管理DBでは、タスクを管理するためのテーブルを作成しました。

SQLの基本的な操作から、複数テーブルを使用したJOIN、データの集計を行うGROUP BYまで一通り学習しています。

### 学習内容

* テーブル作成
* データ登録
* データ更新
* データ削除
* データ検索
* 条件検索
* 並び替え
* テーブル結合
* データ集計
* ER図作成

タスク管理DBは、今回のデータベース学習における最初の成果物として完成しています。

---

## 7. 図書館管理DB

タスク管理DBで学習した内容を応用し、図書館を題材としたデータベースを作成します。

現在は作成準備段階です。

予定している主なテーブルは以下です。

* books
* authors
* members
* loans

本・著者・利用者・貸出情報などを管理し、テーブル同士を関連付けてデータを取得できる構成を目指します。

タスク管理DBと同様に、

```text
CREATE TABLE
↓
INSERT
↓
UPDATE / DELETE
↓
SELECT
↓
JOIN
↓
GROUP BY
```

の順番で学習します。

---

## 8. 成績管理DB

最後に、学生の成績を管理するデータベースを作成する予定です。

学生・科目・成績などの情報を管理し、複数のテーブルを関連付けたデータベースを作成します。

予定している学習内容は以下です。

* 学生情報の管理
* 科目情報の管理
* 成績情報の管理
* テーブル間のリレーション
* JOINによる成績検索
* GROUP BYによる集計
* 平均点などの計算

---

## 9. ER図

各データベースについて、テーブル同士の関係をER図として作成します。

ER図では、

* 主キー
* 外部キー
* 1対1
* 1対多
* テーブル間の関係

などを確認できるようにします。

各データベースのER図は、それぞれの `diagram` フォルダに保存します。

---

## 10. MySQLの起動

Docker Composeを使用してMySQLを起動します。

```bash
docker compose up -d
```

コンテナの状態を確認する場合は、

```bash
docker compose ps
```

を使用します。

MySQLを停止する場合は、

```bash
docker compose down
```

を使用します。

---

## 11. 学習の進め方

各データベースについて、以下の流れで作成します。

```text
① データベース設計
        ↓
② テーブル設計
        ↓
③ ER図作成
        ↓
④ CREATE TABLE
        ↓
⑤ INSERT
        ↓
⑥ UPDATE / DELETE
        ↓
⑦ SELECT
        ↓
⑧ JOIN
        ↓
⑨ GROUP BY
        ↓
⑩ 動作確認
        ↓
⑪ README整理
```

同じ流れを複数の題材で繰り返すことで、SQLの基本操作を定着させます。

---

## 12. 今後の学習

今回のタスク管理DBを基礎として、今後は以下のデータベースを作成する予定です。

1. タスク管理DB
2. 図書館管理DB
3. 成績管理DB

タスク管理DBではSQLの基本操作を学習しました。

次は図書館管理DBを作成し、同じSQL操作を別のデータ構造で実践します。

最後に成績管理DBを作成し、複数のテーブルを関連付けたデータベースの設計・SQL操作についてさらに理解を深めます。

これらのデータベースはJavaのシステムとは直接接続せず、データベース単体の設計・SQL学習用の成果物として作成します。

---

## 13. 目標

このプロジェクトを通して、以下の内容を自分で設計・作成できることを目標とします。

* データベースの基本設計
* テーブル設計
* 主キー・外部キーの設定
* ER図の作成
* SQLによるデータ操作
* 複数テーブルを使用したJOIN
* GROUP BYを使用したデータ集計
* Dockerを使用したMySQL環境構築

最終的には、データベースの設計からSQLの作成・実行までを一通り自分で行える状態を目指します。
