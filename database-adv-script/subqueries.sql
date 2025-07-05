/*Write a query to find all properties
where the average rating is greater
than 4.0 using a subquery
*/
SELECT 
    property_id,
    name,
    location,
    pricepernight
FROM properties
WHERE property_id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

/*Write a correlated subquery to 
find users who have made 
more than 3 bookings.
*/

SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM users
WHERE (
    SELECT COUNT(*)
    FROM bookings
    WHERE bookings.user_id = users.user_id
) > 3;
