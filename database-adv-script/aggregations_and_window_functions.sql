/*Write a query to find the total number 
of bookings made by each user, 
using the COUNT function and GROUP BY clause.
*/
SELECT 
  "user".user_id,
  "user".first_name,
  "user".last_name,
  COUNT(booking.booking_id) AS total_bookings
FROM "user"
LEFT JOIN booking ON "user".user_id = booking.user_id
GROUP BY "user".user_id, "user".first_name, "user".last_name
ORDER BY total_bookings DESC;

/*Use a window function (ROW_NUMBER, RANK) to 
rank properties based on the total 
number of bookings they have received.
*/

SELECT
  property.property_id,
  property.name AS property_name,
  COUNT(booking.booking_id) AS total_bookings,
  RANK() OVER (ORDER BY COUNT(booking.booking_id) DESC) AS booking_rank
FROM property
LEFT JOIN booking ON property.property_id = booking.property_id
GROUP BY property.property_id, property.name
ORDER BY booking_rank;

