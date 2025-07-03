-- Insert Users (10 users: 3 hosts, 6 guests, 1 admin)
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u1', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '0712345678', 'host'),
('u2', 'Bob', 'Smith', 'bob@example.com', 'hash2', '0712345679', 'host'),
('u3', 'Carla', 'Brown', 'carla@example.com', 'hash3', '0712345680', 'host'),
('u4', 'Daniel', 'Lee', 'daniel@example.com', 'hash4', '0712345681', 'guest'),
('u5', 'Eva', 'White', 'eva@example.com', 'hash5', '0712345682', 'guest'),
('u6', 'Frank', 'Black', 'frank@example.com', 'hash6', '0712345683', 'guest'),
('u7', 'Grace', 'Kim', 'grace@example.com', 'hash7', '0712345684', 'guest'),
('u8', 'Henry', 'Stone', 'henry@example.com', 'hash8', '0712345685', 'guest'),
('u9', 'Isla', 'Scott', 'isla@example.com', 'hash9', '0712345686', 'guest'),
('u10', 'Admin', 'User', 'admin@bnb.com', 'hash10', '0712345687', 'admin');


-- Insert Properties (10 properties by 3 hosts)
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('p1', 'u1', 'Beachside Bungalow', 'Relaxing home near the ocean', 'Mombasa', 120.00),
('p2', 'u1', 'City Loft', 'Modern loft in the city center', 'Nairobi', 100.00),
('p3', 'u2', 'Treehouse Retreat', 'Treehouse in the forest', 'Naivasha', 80.00),
('p4', 'u2', 'Desert Cabin', 'Remote desert getaway', 'Isiolo', 60.00),
('p5', 'u3', 'Mountain Hut', 'Cabin with mountain views', 'Mt. Kenya', 75.00),
('p6', 'u3', 'Lake House', 'House next to a lake', 'Kisumu', 95.00),
('p7', 'u1', 'Penthouse Suite', 'Luxury suite with view', 'Nairobi', 200.00),
('p8', 'u2', 'Countryside Farmhouse', 'Spacious farmhouse', 'Kericho', 85.00),
('p9', 'u3', 'Historic Cottage', 'Cozy old-style home', 'Nakuru', 70.00),
('p10', 'u2', 'Jungle Bungalow', 'Bungalow deep in the jungle', 'Kakamega', 90.00);


-- Insert Bookings (10 bookings by different guests)
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1', 'p1', 'u4', '2025-07-01', '2025-07-05', 480.00, 'confirmed'),
('b2', 'p2', 'u5', '2025-07-02', '2025-07-04', 200.00, 'confirmed'),
('b3', 'p3', 'u6', '2025-07-03', '2025-07-06', 240.00, 'pending'),
('b4', 'p4', 'u7', '2025-07-10', '2025-07-12', 120.00, 'canceled'),
('b5', 'p5', 'u8', '2025-07-15', '2025-07-18', 225.00, 'confirmed'),
('b6', 'p6', 'u9', '2025-07-20', '2025-07-23', 285.00, 'confirmed'),
('b7', 'p7', 'u4', '2025-08-01', '2025-08-03', 400.00, 'confirmed'),
('b8', 'p8', 'u5', '2025-08-05', '2025-08-09', 340.00, 'pending'),
('b9', 'p9', 'u6', '2025-08-10', '2025-08-13', 210.00, 'confirmed'),
('b10', 'p10', 'u7', '2025-08-15', '2025-08-17', 180.00, 'confirmed');


-- Insert Payments (10 payments for confirmed bookings)
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('pay1', 'b1', 480.00, 'credit_card'),
('pay2', 'b2', 200.00, 'paypal'),
('pay3', 'b5', 225.00, 'stripe'),
('pay4', 'b6', 285.00, 'credit_card'),
('pay5', 'b7', 400.00, 'paypal'),
('pay6', 'b9', 210.00, 'stripe'),
('pay7', 'b10', 180.00, 'credit_card'),
('pay8', 'b3', 240.00, 'stripe'),
('pay9', 'b8', 340.00, 'paypal'),
('pay10', 'b4', 120.00, 'credit_card');


-- Insert Reviews (10 reviews from guests)
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('r1', 'p1', 'u4', 5, 'Amazing stay!'),
('r2', 'p2', 'u5', 4, 'Great location.'),
('r3', 'p5', 'u8', 5, 'Loved the view!'),
('r4', 'p6', 'u9', 4, 'Very peaceful.'),
('r5', 'p7', 'u4', 3, 'Pricey but nice.'),
('r6', 'p9', 'u6', 5, 'Perfect getaway!'),
('r7', 'p10', 'u7', 4, 'Good jungle experience.'),
('r8', 'p8', 'u5', 4, 'Spacious and clean.'),
('r9', 'p3', 'u6', 3, 'A bit remote.'),
('r10', 'p4', 'u7', 2, 'Too hot!');

-- Insert Messages (10 messages between users)
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('m1', 'u4', 'u1', 'Hi, is the property available?'),
('m2', 'u1', 'u4', 'Yes, it is available.'),
('m3', 'u5', 'u2', 'Can I bring my pet?'),
('m4', 'u2', 'u5', 'Yes, pets are welcome.'),
('m5', 'u6', 'u3', 'Is the treehouse safe?'),
('m6', 'u3', 'u6', 'Absolutely, very secure.'),
('m7', 'u7', 'u2', 'Do you offer late check-out?'),
('m8', 'u2', 'u7', 'Yes, until 1pm.'),
('m9', 'u8', 'u3', 'How far is it from town?'),
('m10', 'u3', 'u8', 'About 15 minutes drive.');