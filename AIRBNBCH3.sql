SELECT
	CAST((RIGHT(price, LENGTH(price)-1)) AS INT)
FROM
	sfo_calendar
WHERE price IS NOT NULL
ORDER BY 1
