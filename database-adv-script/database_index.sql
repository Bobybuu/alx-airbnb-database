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
