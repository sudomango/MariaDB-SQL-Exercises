/* Решение для задачи #25 (подраздел SELECT с выбором СУБД) тренажёра SQL-Ex. */

WITH Low_Ram AS
(SELECT model, speed, ram FROM PC
WHERE ram = (SELECT MIN(ram) FROM PC))

SELECT maker FROM Product
WHERE type = "Printer"

INTERSECT

SELECT maker FROM Product
WHERE type = "PC" AND model IN

(SELECT model FROM Low_Ram
WHERE speed = (SELECT MAX(speed) FROM Low_Ram))