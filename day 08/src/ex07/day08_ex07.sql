BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SHOW TRANSACTION ISOLATION LEVEL;
-- Session #1
UPDATE pizzeria SET rating = 4.0 WHERE id = 1;
-- Session #2
UPDATE pizzeria SET rating = 3.3 WHERE id = 2;
-- Session #1
UPDATE pizzeria SET rating = 2.2 WHERE id = 2;
-- Session #2
UPDATE pizzeria SET rating = 2.9 WHERE id = 1;
-- Session #1
COMMIT;
-- Session #2
COMMIT;
