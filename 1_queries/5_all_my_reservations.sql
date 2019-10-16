-- SELECT properties.*, AVG(property_reviews.rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON property_id = properties.id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING AVG(property_reviews.rating) >= 4
-- ORDER BY cost_per_night
-- LIMIT 10;


SELECT properties.id, properties.title, properties.cost_per_night, reservations.start_date, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON property_reviews.property_id = properties.id
JOIN reservations ON reservations.property_id = properties.id
WHERE end_date < now()::date 
AND reservations.guest_id = 1
GROUP BY properties.id, properties.title, properties.cost_per_night, reservations.start_date
ORDER BY reservations.start_date
LIMIT 10;