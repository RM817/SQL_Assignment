SELECT 
	--x.listing_id,
	CAST(LEFT((RIGHT(CAST(x.calender_date AS text), LENGTH(CAST(x.calender_date AS text)) - 5)),LENGTH(RIGHT(CAST(x.calender_date AS text), LENGTH(CAST(x.calender_date AS text)) - 5))-3) AS numeric) AS month,
	AVG(price::money::numeric::float8) AS Average_Monthly_Price
FROM
	sfo_calendar x
WHERE
	price IS NOT NULL
GROUP BY 1
ORDER BY 2

--It seems winter is the cheapest time to travel with Jan, Feb, and Dec being the cheapest.
