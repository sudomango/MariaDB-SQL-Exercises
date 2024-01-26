/* Решение для задачи #66 тренажёра SQL Academy. */

SELECT home_type,
	address,
	IFNULL(total_days, 0) AS days,
	IFNULL(total_fee, 0) AS total_fee
FROM Rooms
	LEFT JOIN (
		SELECT room_id,
			SUM(DATEDIFF(end_date, start_date)) AS total_days,
			SUM(total) as total_fee
		FROM Reservations
		GROUP BY room_id
	) AS TotalSum ON Rooms.id = TotalSum.room_id
WHERE has_tv = 1
	AND has_internet = 1
	AND has_air_con = 1
	AND has_kitchen = 1;