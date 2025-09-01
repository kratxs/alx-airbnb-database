# ⚡ Optimization Report — Airbnb Clone

This report documents the query analysis, identified inefficiencies, and refactored query for improved performance.

---

## 🔍 Initial Query Analysis

### EXPLAIN Output



---

## ⚠️ Inefficiencies Identified
- **Full table scan** on `Booking` (`type = ALL`)  
- **High number of rows scanned** across tables  
- **Inefficient join types** in some cases  
- **Unnecessary columns** included in the initial query  

---

## ✅ Refactored Query

```sql
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.name AS property_name,
    pay.amount
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.start_date >= CURRENT_DATE;  -- Only retrieve future bookings


## 🚀 Improvements Achieved

- Reduced **row scans** by filtering only future bookings  
- Ensured **indexed joins** (`user_id`, `property_id`, `booking_id`)  
- Eliminated **unnecessary columns** from the `SELECT` list  
- Improved overall **query efficiency** and **execution time**  
