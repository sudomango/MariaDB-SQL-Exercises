/* Решение для задачи #10 (подраздел DML) тренажёра SQL-Ex. */

WITH Null_Models AS

(SELECT DISTINCT Product.model
FROM Product LEFT JOIN PC
ON PC.model = Product.model
WHERE type = 'PC' AND PC.model IS NULL),

Avg_Price AS
(SELECT AVG(price) AS price FROM PC)

INSERT INTO PC

SELECT
  CAST(model + (SELECT MAX(code) FROM PC) AS INT) AS code,
  model,
  (SELECT MAX(speed) FROM PC) AS speed,
  (SELECT MAX(ram) FROM PC) AS ram,
  (SELECT MAX(hd) FROM PC) AS hd,
  (SELECT
      CONCAT(MAX(CAST(LEFT(cd, CHARINDEX('x', cd) - 1) AS INT)), 'x')
   FROM PC) AS cd,
  (SELECT price FROM Avg_Price) AS price
FROM Null_Models