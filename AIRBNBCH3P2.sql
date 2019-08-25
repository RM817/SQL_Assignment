SELECT 
	CAST(LEFT((RIGHT(CAST(x.calender_date AS text), LENGTH(CAST(x.calender_date AS text)) - 5)),LENGTH(RIGHT(CAST(x.calender_date AS text), LENGTH(CAST(x.calender_date AS text)) - 5))-3) AS numeric) AS month,
	Count(*)
FROM
	sfo_calendar x
WHERE
	price IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC

--It seems winter is also the busiest time of year as Nov, Jan, and Dec have the most AirBnbs sold.
