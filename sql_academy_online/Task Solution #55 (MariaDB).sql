/* Решение для задачи #55 тренажёра SQL Academy. */

DELETE FROM Company
WHERE Company.id IN (
	SELECT company
	FROM Trip
	GROUP BY company
	HAVING COUNT(Trip.id) = (
		SELECT MIN(trip_count)
		FROM (
			SELECT COUNT(Trip.id) AS trip_count
			FROM Trip
			GROUP BY company
		) AS Min_Count
    )
);

/* Самое первое, неоптимизированное решение (просто для справки). */

DELETE FROM Company
WHERE Company.name IN (
	SELECT *
	FROM (
		SELECT Company.name
		FROM Company
			INNER JOIN Trip ON Trip.company = Company.id
		GROUP BY Company.name
		HAVING COUNT(*) = (
			SELECT COUNT(*) As count
			FROM Company
				INNER JOIN Trip ON Trip.company = Company.id
			GROUP BY Company.name
			ORDER BY COUNT(*)
			LIMIT 1
		)
	) AS Table_A
);