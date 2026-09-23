USE transaction_db;

START TRANSACTION;

-- Step 1: Deduct money from Hari
UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 101;

-- Step 2: Add money to Priya
UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 102;

-- Check the result
SELECT * FROM accounts;

-- Complete the transaction
COMMIT;

SELECT * FROM accounts;
