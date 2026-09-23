USE transaction_db;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 101;

SAVEPOINT point1;

UPDATE accounts
SET balance = balance - 300
WHERE account_id = 101;

SAVEPOINT point2;

UPDATE accounts
SET balance = balance - 200
WHERE account_id = 101;

SELECT * FROM accounts;

-- Undo changes after point2
ROLLBACK TO point2;

SELECT * FROM accounts;

-- Undo changes after point1
ROLLBACK TO point1;

SELECT * FROM accounts;

COMMIT;
