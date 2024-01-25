/* Решение для задачи #41 (подраздел SELECT с выбором СУБД) тренажёра SQL-Ex. */

WITH All_Models AS

(SELECT model, "PC" AS type, price,
IF(price IS NULL, 1, 0) AS null_price FROM PC

UNION ALL

SELECT model, "Laptop" AS type, price,
IF(price IS NULL, 1, 0) AS null_price FROM Laptop

UNION ALL

SELECT model, "Printer" AS type, price,
IF(price IS NULL, 1, 0) AS null_price FROM Printer)

SELECT maker,
IF(SUM(null_price) > 0, NULL, MAX(price)) AS max_price
FROM All_Models
INNER JOIN Product ON Product.model = All_Models.model
GROUP BY maker