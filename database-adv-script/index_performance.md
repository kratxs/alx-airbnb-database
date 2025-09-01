# 📊 High Usage Columns — Airbnb Clone Database

This section highlights the **frequently accessed columns** across key tables in the Airbnb Clone schema.  
These columns are critical for lookups, joins, and query performance optimization (e.g., indexing).

---

## 👤 User Table
- **email** — used for logins and lookups  
- **user_id** — primary key, used for joins with other tables  
- **role** — filter users by type (Guest, Host, Admin)  

---

## 🏠 Property Table
- **property_id** — primary key, used for joins  
- **host_id** — find properties by owner  
- **location** — search filters by city/region  
- **pricepernight** — sorting/filtering by price  

---

## 📅 Booking Table
- **booking_id** — primary key  
- **user_id** — find a user’s bookings  
- **property_id** — find bookings for a property  
- **status** — filter by booking state (pending, confirmed, canceled)  
- **start_date / end_date** — queries by date range (availability, reports)  

---

## 📌 Notes
Indexing these columns ensures:
- Faster lookups for **logins, searches, and filters**  
- Efficient **joins** between users, properties, and bookings  
- Optimized queries for **reports and dashboards**  
