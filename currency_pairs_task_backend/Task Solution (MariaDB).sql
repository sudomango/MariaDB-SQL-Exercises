/* Задание: Вывести самое свежее значение по каждой паре валют, не включать в выборку значения NULL. Стоит учитывать, что значение по любой паре валют могло какое-то время не обновляться, всё равно вывести самое последнее из существующих. */

SELECT currency_pair, datestamp, currency_ratio
FROM Currency_Rates
WHERE (currency_pair, datestamp) IN (
	SELECT currency_pair,
		MAX(datestamp) AS fresh_date
	FROM Currency_Rates
	WHERE currency_ratio IS NOT NULL AND datestamp IS NOT NULL
	GROUP BY currency_pair
)
ORDER BY datestamp DESC;