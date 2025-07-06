-- Step 1: Recreate the booking table with partitioning enabled
-- ⚠️ Note: Partitioned tables must not have foreign keys in MySQL

-- First, create a copy of booking without foreign keys and with partitioning
CREATE TABLE booking_partitioned (
    booking_id CHAR(36) NOT NULL,
    property_id CHAR(36) NOT NULL,
    user_id CHAR(36) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Step 2: Copy data from original booking table into the partitioned version
INSERT INTO booking_partitioned
SELECT * FROM booking;

-- (Optional) Swap tables if everything works
-- RENAME TABLE booking TO booking_backup, booking_partitioned TO booking;

-- Step 3: Test partition-aware query
EXPLAIN
SELECT *
FROM booking_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';