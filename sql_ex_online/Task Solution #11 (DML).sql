/* Решение для задачи #11 (подраздел DML) тренажёра SQL-Ex. */

INSERT INTO PC(code, model, speed, ram, hd, cd, price)

SELECT
  MIN(code) + 20 AS code,
  model + 1000 AS model,
  MAX(speed) as speed,
  MAX(ram) * 2 AS ram,
  MAX(hd) * 2 AS hd,
  (SELECT
      CONCAT(MAX(CAST(LEFT(cd, CHARINDEX('x', cd) - 1) AS INT)), 'x')
   FROM PC) AS cd,
  MAX(price) / 1.5 AS price
FROM Laptop
GROUP BY model
HAVING COUNT(*) > 0