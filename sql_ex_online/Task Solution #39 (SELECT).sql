/* Решение для задачи #39 (подраздел SELECT с выбором СУБД) тренажёра SQL-Ex. */

WITH The_Ships AS

(SELECT ship, name, Date(date) AS date, result
FROM Battles INNER JOIN Outcomes
ON Battles.name = Outcomes.battle
ORDER BY ship, date)

SELECT DISTINCT A.ship
FROM The_Ships AS A, The_Ships AS B -- Self Join для сравнения записей из одной таблицы
WHERE A.ship = B.ship AND A.date < B.date
AND A.result = "damaged"