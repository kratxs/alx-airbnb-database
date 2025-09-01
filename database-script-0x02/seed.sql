-- Users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
(gen_random_uuid(), 'Sofia', 'Martinez', 'sofia.martinez@example.com', 'hashed_pw_1', '+4915201234567', 'guest', NOW()),
(gen_random_uuid(), 'Lukas', 'Schneider', 'lukas.schneider@example.com', 'hashed_pw_2', '+4915207654321', 'host', NOW()),
(gen_random_uuid(), 'Emma', 'Dubois', 'emma.dubois@example.com', 'hashed_pw_3', '+33123456789', 'host', NOW()),
(gen_random_uuid(), 'Mateo', 'Rossi', 'mateo.rossi@example.com', 'hashed_pw_4', '+390612345678', 'guest', NOW()),
(gen_random_uuid(), 'Hannah', 'Nguyen', 'hannah.nguyen@example.com', 'hashed_pw_5', NULL, 'admin', NOW());

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
(gen_random_uuid(), (SELECT user_id FROM "User" WHERE email='lukas.schneider@example.com'), 
 'Berlin Loft Apartment', 'Stylish loft with modern amenities near Alexanderplatz.', 'Berlin, Germany', 95.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM "User" WHERE email='emma.dubois@example.com'), 
 'Paris Studio Flat', 'Cozy studio flat in the heart of Montmartre.', 'Paris, France', 140.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM "User" WHERE email='emma.dubois@example.com'), 
 'Lake Como Retreat', 'Beautiful lakeside house with private garden.', 'Como, Italy', 220.00, NOW(), NOW());

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
(gen_random_uuid(), (SELECT property_id FROM Property WHERE name='Berlin Loft Apartment'),
 (SELECT user_id FROM "User" WHERE email='sofia.martinez@example.com'),
 '2025-09-12', '2025-09-16', 380.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM Property WHERE name='Paris Studio Flat'),
 (SELECT user_id FROM "User" WHERE email='mateo.rossi@example.com'),
 '2025-09-20', '2025-09-24', 560.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM Property WHERE name='Lake Como Retreat'),
 (SELECT user_id FROM "User" WHERE email='sofia.martinez@example.com'),
 '2025-10-05', '2025-10-10', 1100.00, 'canceled', NOW());

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
(gen_random_uuid(), (SELECT booking_id FROM Booking WHERE total_price=380.00), 380.00, NOW(), 'credit_card'),
(gen_random_uuid(), (SELECT booking_id FROM Booking WHERE total_price=560.00), 200.00, NOW(), 'stripe');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
(gen_random_uuid(), (SELECT property_id FROM Property WHERE name='Berlin Loft Apartment'),
 (SELECT user_id FROM "User" WHERE email='sofia.martinez@example.com'), 5, 'Amazing loft, close to everything!', NOW()),
(gen_random_uuid(), (SELECT property_id FROM Property WHERE name='Lake Como Retreat'),
 (SELECT user_id FROM "User" WHERE email='mateo.rossi@example.com'), 3, 'Lovely location but Wi-Fi was unreliable.', NOW());

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
(gen_random_uuid(),
 (SELECT user_id FROM "User" WHERE email='sofia.martinez@example.com'),
 (SELECT user_id FROM "User" WHERE email='lukas.schneider@example.com'),
 'Hi Lukas, is early check-in possible for the loft?', NOW()),

(gen_random_uuid(),
 (SELECT user_id FROM "User" WHERE email='lukas.schneider@example.com'),
 (SELECT user_id FROM "User" WHERE email='sofia.martinez@example.com'),
 'Hi Sofia, yes you can check in from 11 AM.', NOW());
