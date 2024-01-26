/* Решение для задачи #71 тренажёра SQL Academy. */

WITH Once_Count AS (
	SELECT COUNT(*) AS count
	FROM (
		SELECT DISTINCT Users.id
		FROM Users
			INNER JOIN Reservations ON Users.id = Reservations.user_id
		UNION
		SELECT DISTINCT Users.id
		FROM Users
			INNER JOIN Rooms ON Users.id = Rooms.owner_id
			INNER JOIN Reservations ON Rooms.id = Reservations.room_id
	) AS Active_Users
)

SELECT ROUND((
    SELECT *
	FROM Once_Count
) / COUNT(*) * 100, 2) as percent
FROM Users