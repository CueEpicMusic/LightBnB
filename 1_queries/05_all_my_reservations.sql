SELECT reservations.id AS id, properties.title AS title, reservations.start_date AS start_date, properties.cost_per_night AS cost_per_night, AVG(property_reviews.rating)
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
Limit 10;