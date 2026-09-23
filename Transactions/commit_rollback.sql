CREATE DATABASE transaction_db;
USE transaction_db;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts VALUES
(101, 'Hari', 5000),
(102, 'Priya', 3000);

SELECT * FROM accounts;

-- Transaction
START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 101;

UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 102;

-- Save the changes
COMMIT;

SELECT * FROM accounts;

-- Another transaction
START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 101;

-- Undo the transaction
ROLLBACK;

SELECT * FROM accounts;
