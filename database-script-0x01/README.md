# AirBnB Database Schema

## Overview
This database schema is designed to manage the core functionality of an **AirBnB-like system**, including users, properties, bookings, payments, reviews, and messaging.  
The structure ensures **data integrity**, **optimized performance**, and **easy management of relationships** between entities.

---

## Key Features

- **User Management**  
  Supports multiple roles (`guest`, `host`, `admin`) and stores essential user details.

- **Property Listings**  
  Hosts can manage property listings with details such as description, location, and nightly pricing.

- **Booking System**  
  Users can make and manage bookings, with status indicators (`pending`, `confirmed`, `canceled`).

- **Payment Processing**  
  Manages payments linked to bookings, with support for multiple payment methods.

- **Review System**  
  Users can leave ratings and comments on properties.

- **Messaging Functionality**  
  Enables direct communication between users (sending and receiving messages).

---

## Schema Highlights

### User
- **Primary Key**: `user_id`
- **Attributes**:  
  `first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`, `created_at`

### Property
- **Primary Key**: `property_id`  
- **Foreign Key**: `host_id` → `User(user_id)`  
- **Attributes**:  
  `name`, `description`, `location`, `pricepernight`, `created_at`, `updated_at`

### Booking
- **Primary Key**: `booking_id`  
- **Foreign Keys**:  
  - `property_id` → `Property(property_id)`  
  - `user_id` → `User(user_id)`  
- **Attributes**:  
  `start_date`, `end_date`, `total_price`, `status`, `created_at`

### Payment
- **Primary Key**: `payment_id`  
- **Foreign Key**: `booking_id` → `Booking(booking_id)`  
- **Attributes**:  
  `amount`, `payment_date`, `payment_method`

### Review
- **Primary Key**: `review_id`  
- **Foreign Keys**:  
  - `property_id` → `Property(property_id)`  
  - `user_id` → `User(user_id)`  
- **Attributes**:  
  `rating`, `comment`, `created_at`

### Message
- **Primary Key**: `message_id`  
- **Foreign Keys**:  
  - `sender_id` → `User(user_id)`  
  - `recipient_id` → `User(user_id)`  
- **Attributes**:  
  `message_body`, `sent_at`

---

## Notes
- You are free to **modify and extend** it for your own projects.
