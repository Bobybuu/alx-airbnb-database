-- =========================
-- Indexes for Optimization
-- =========================

-- User table indexes
CREATE INDEX idx_user_email ON "user"(email);
CREATE INDEX idx_user_role ON "user"(role);

-- Booking table indexes
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);
CREATE INDEX idx_booking_status ON booking(status);

-- Property table indexes
CREATE INDEX idx_property_host_id ON property(host_id);
CREATE INDEX idx_property_location ON property(location);

-- ===================================
-- Performance Measurement (Optional)
-- ===================================

-- Measure the performance of a query using EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT 
  "user".user_id,
  COUNT(booking.booking_id) AS total_bookings
FROM "user"
JOIN booking ON "user".user_id = booking.user_id
WHERE "user".role = 'guest'
GROUP BY "user".user_id;

