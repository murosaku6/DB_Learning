USE library_management;

SET NAMES utf8mb4;

-- UPDATE

-- loan_id = 3 の本を返却済みにする
UPDATE loans
SET return_date = '2026-08-20'
WHERE loan_id = 3;

-- 更新結果を確認
SELECT *
FROM loans
WHERE loan_id = 3;


-- DELETE

-- loan_id = 7 の貸出履歴を削除する
DELETE FROM loans
WHERE loan_id = 7;

-- 削除結果を確認
SELECT *
FROM loans;