# AirBnB Database Sample Data

## Overview
This section describes the **sample data** inserted into the AirBnB database schema to demonstrate its functionality and common use cases.  
The dataset reflects **real-world interactions** within the AirBnB platform, allowing for testing and development of features such as user management, property listings, booking processes, payments, reviews, and messaging.

---

## Sample Data Overview
The sample dataset includes records across the following entities:

- **Users**  
- **Properties**  
- **Bookings**  
- **Payments**  
- **Reviews**  
- **Messages**

This data mirrors how different roles (guests, hosts, and admins) interact with the platform.

---

## Real-World Data Features

### Users
- Multiple users are included, representing different roles: **guests**, **hosts**, and an **admin**.
- Each user has realistic attributes:
  - Name (first and last)
  - Email (unique identifier)
  - Password hash (simulated)
  - Phone number
  - Role (`guest`, `host`, `admin`)

### Properties
- Several properties are listed, showcasing a variety of rental options:
  - Urban apartments
  - Beachfront villas
  - Mountain cabins
- Attributes include:
  - Property name and description
  - Location
  - Price per night
  - Host reference

### Bookings
- Demonstrates how **guests reserve properties** for specific date ranges.
- Includes:
  - Associated property and user
  - Start and end dates
  - Total price
  - Booking status (`pending`, `confirmed`, `canceled`)

### Payments
- Linked directly to bookings to represent **financial transactions**.
- Features:
  - Booking reference
  - Amount
  - Payment date
  - Payment method (`credit_card`, `paypal`, `stripe`)
- Includes both **full** and **partial** payments.

### Reviews
- Provides guest feedback on their stays.
- Each review includes:
  - Rating (1–5 scale)
  - Comment
  - Timestamp
- Simulates how hosts can gather insights and improve offerings.

### Messages
- Captures **guest ↔ host communication** around bookings and property inquiries.
- Includes:
  - Sender and recipient references
  - Message body
  - Timestamp
- Demonstrates real-world interactions that enhance user engagement.

---

## Usage
The sample dataset can be used to:

- **Test schema integrity** and relationships between entities.  
- **Simulate real-world workflows**, such as:
  - A guest booking a property
  - Host receiving payment
  - Guest leaving a review
  - Guest and host exchanging messages  
- **Develop and validate application features**, ensuring they function correctly with realistic data.  

This dataset serves as a **foundation for demos, prototyping, and learning** the AirBnB-style database schema.

---
