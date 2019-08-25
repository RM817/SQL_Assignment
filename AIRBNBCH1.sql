SELECT
	sfo_listings.id,
	sfo_listings.name,
	sfo_listings.host_id,
	sfo_listings.host_name,
	sfo_listings.neighbourhood,
	sfo_listings.room_type,
	sfo_listings.price,
	sfo_reviews.listing_id,
	sfo_reviews.review_date,
	sfo_reviews.reviewer_name,
	sfo_reviews.comments
FROM
	sfo_listings
JOIN
	sfo_reviews
ON
	sfo_listings.id = sfo_reviews.listing_id
ORDER BY price DESC
LIMIT 1