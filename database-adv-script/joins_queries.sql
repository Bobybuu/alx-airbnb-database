/*Write a query using an INNER JOIN 
to retrieve all bookings and the respective 
users who made those bookings.
*/

SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status,
    bookings.created_at AS booking_created_at,
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users
    ON bookings.user_id = users.user_id;

/*Write a query using a LEFT JOIN 
to retrieve all properties and their reviews, 
including properties that have no reviews.
*/

SELECT 
    properties.property_id,
    properties.name AS property_name,
    properties.location,
    properties.pricepernight,
    reviews.review_id,
    reviews.rating,
    reviews.comment,
    reviews.created_at AS review_date,
    reviews.user_id AS reviewer_id
FROM properties
LEFT JOIN reviews
    ON properties.property_id = reviews.property_id
ORDER BY properties.property_id;


-- Simulated FULL OUTER JOIN: Users ↔ Bookings
SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    users.email,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    users.email,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status
FROM bookings
RIGHT JOIN users ON users.user_id = bookings.user_id;