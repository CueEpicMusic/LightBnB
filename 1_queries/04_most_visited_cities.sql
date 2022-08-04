SELECT properties.city AS name, COUNT(reservations) AS total_reservations
FROM properties
JOIN reservations ON property_id = properties.id
GROUP BY properties.city
ORDER BY COUNT(reservations) DESC;