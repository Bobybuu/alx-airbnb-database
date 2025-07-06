-- Drop the original bookings table if needed (BE CAREFUL in production)
-- DROP TABLE IF EXISTS bookings;

-- 1. Create a new partitioned bookings table (Range Partitioning by year of start_date)

CREATE TABLE bookings (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (EXTRACT(YEAR FROM start_date));

-- 2. Create partitions for each year

CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM (2023) TO (2024);

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM (2024) TO (2025);

CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM (2025) TO (2026);

-- 3. Optional: Add indexes on commonly queried columns in each partition

CREATE INDEX idx_booking_user_2023 ON bookings_2023(user_id);
CREATE INDEX idx_booking_user_2024 ON bookings_2024(user_id);
CREATE INDEX idx_booking_user_2025 ON bookings_2025(user_id);

-- 4. Sample query to test performance on partitioned table

EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2024-06-01' AND '2024-07-01';

SELECT *
FROM booking_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';