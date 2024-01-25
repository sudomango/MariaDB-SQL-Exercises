/* Решение для задачи #58 тренажёра SQL Academy. */

INSERT INTO Reviews (id, reservation_id, rating)
VALUES -- Вставляем id как количество записей в таблице + 1.
(
	(
		SELECT COUNT(*) + 1 AS id
		FROM (
			SELECT id FROM Reviews
		) AS Rev
	),
	-- С помощью подзапроса находим нужный reservation_id.
	(
		SELECT Reservations.id
		FROM Reservations
			INNER JOIN Users ON Users.id = Reservations.user_id
			INNER JOIN Rooms ON Rooms.id = Reservations.room_id
		WHERE Users.name = "George Clooney"
			AND Rooms.address = "11218, Friel Place, New York"
	),
	-- Рейтинг вставляем просто целым числом.
	5
);