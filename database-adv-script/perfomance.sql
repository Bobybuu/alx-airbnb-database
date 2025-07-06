-- Initial query: Retrieve filtered bookings with user, property, and payment details
SELECT 
  booking.booking_id,
  booking.start_date,
  booking.end_date,
  booking.status,
  booking.total_price,
  
  "user".user_id,
  "user".first_name,
  "user".last_name,
  "user".email,
  
  property.property_id,
  property.name AS property_name,
  property.location,
  property.pricepernight,

  payment.payment_id,
  payment.amount,
  payment.payment_method,
  payment.payment_date

FROM booking
JOIN "user" ON booking.user_id = "user".user_id
JOIN property ON booking.property_id = property.property_id
LEFT JOIN payment ON booking.booking_id = payment.booking_id

-- ✅ Required filters
WHERE booking.status = 'confirmed'
  AND property.location = 'Nairobi';

-- Performance analysis using EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT 
  booking.booking_id,
  booking.start_date,
  booking.end_date,
  booking.status,
  booking.total_price,
  
  "user".user_id,
  "user".first_name,
  "user".last_name,
  "user".email,
  
  property.property_id,
  property.name AS property_name,
  property.location,
  property.pricepernight,

  payment.payment_id,
  payment.amount,
  payment.payment_method,
  payment.payment_date

FROM booking
JOIN "user" ON booking.user_id = "user".user_id
JOIN property ON booking.property_id = property.property_id
LEFT JOIN payment ON booking.booking_id = payment.booking_id

-- ✅ Same filter again for EXPLAIN
WHERE booking.status = 'confirmed'
  AND property.location = 'Nairobi';

