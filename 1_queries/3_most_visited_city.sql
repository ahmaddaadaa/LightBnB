SELECT city, COUNT(reservations.id) as total_reservations
FROM properties
LEFT JOIN reservations ON properties.id = reservations.property_id
GROUP BY city
ORDER BY total_reservations DESC;