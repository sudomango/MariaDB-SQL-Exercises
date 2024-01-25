/* Решение для задачи #35 (подраздел SELECT с выбором СУБД) тренажёра SQL-Ex. */

SELECT reg_model, type FROM

(
	SELECT DISTINCT
		IF (model REGEXP "^[[:digit:]]+$" OR
      		model REGEXP "^[A-Za-z]+$", model, NULL) AS reg_model,
		type
	FROM Product
) AS Special_Products

WHERE Special_Products.reg_model IS NOT NULL