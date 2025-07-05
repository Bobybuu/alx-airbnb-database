# 🔗 SQL Join Queries – Airbnb Clone Project

## 🎯 Objective
This section documents key SQL join queries used to retrieve and analyze relationships between users, bookings, properties, and reviews in the Airbnb Clone backend system. The goal is to demonstrate real-world data retrieval techniques using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN (simulated in MySQL).

---

## 📌 Queries Included

### 1️⃣ INNER JOIN: Bookings and Users

**Query Objective:**  
Retrieve all bookings along with the details of the users who made them.

```sql
SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status,
    bookings.created_at AS booking_created_at,
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users
    ON bookings.user_id = users.user_id;
````

**Use Case:**
This query helps in generating user-specific booking history and is useful for reporting, dashboards, or customer support.

---

### 2️⃣ LEFT JOIN: Properties and Reviews

**Query Objective:**
Retrieve all properties and their associated reviews, including properties that have no reviews.

```sql
SELECT 
    properties.property_id,
    properties.name AS property_name,
    properties.location,
    properties.pricepernight,
    reviews.review_id,
    reviews.rating,
    reviews.comment,
    reviews.created_at AS review_date,
    reviews.user_id AS reviewer_id
FROM properties
LEFT JOIN reviews
    ON properties.property_id = reviews.property_id;
```

**Use Case:**
Useful for displaying all listings on the platform, along with their reviews (if any), to site visitors or admins.

---

### 3️⃣ FULL OUTER JOIN (Simulated): Users and Bookings

> MySQL does not support `FULL OUTER JOIN` natively. This query simulates it using a `UNION` of `LEFT JOIN` and `RIGHT JOIN`.

**Query Objective:**
Retrieve all users and all bookings — including:

* Users with no bookings
* Bookings not linked to any user

```sql
-- Simulate FULL OUTER JOIN in MySQL
SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    users.email,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    users.email,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status
FROM bookings
RIGHT JOIN users ON users.user_id = bookings.user_id;
```

**Use Case:**
This query is especially helpful for auditing and data validation — ensuring all users and bookings are accounted for, even if they aren't matched.

---

## 📁 Directory Structure

```
alx-airbnb-project-documentation/
├── joins-and-queries/
│   ├── inner-join-bookings-users.sql
│   ├── left-join-properties-reviews.sql
│   ├── full-outer-join-users-bookings.sql
│   └── README.md
```

---

## 🛠️ Tools & Technologies

* SQL (MySQL 8+)
* Joins: INNER, LEFT, and simulated FULL OUTER
* UNION for result merging
* Real Airbnb-style relational schema

---

## ✅ Benefits of Using Joins

* Combine related data from multiple tables efficiently
* Enable powerful reporting and analysis
* Improve backend functionality (e.g., dashboards, filters)

---

## 👨‍💻 Author

This section was prepared as part of the ALX Software Engineering backend documentation track for the Airbnb Clone project.

---
#Task 2
---

# SQL Subqueries: Correlated and Non-Correlated

## 🎯 Objective

The objective of this exercise is to **learn how to write both correlated and non-correlated subqueries** by solving two practical SQL problems based on a property booking system.

---

## 📝 Tasks

### 1️⃣ Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

#### ✅ SQL Query (Non-Correlated Subquery)

```sql
SELECT *
FROM properties
WHERE property_id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);
````

#### 💡 Explanation

* This is a **non-correlated subquery** because it runs independently of the outer query.
* The inner query calculates the average rating for each property and filters those above 4.0.
* The outer query retrieves full property details for those matching `property_id`s.

---

### 2️⃣ Write a correlated subquery to find users who have made more than 3 bookings.

#### ✅ SQL Query (Correlated Subquery)

```sql
SELECT *
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;
```

#### 💡 Explanation

* This is a **correlated subquery** because the inner query references `u.user_id` from the outer query.
* It counts bookings for each user, and the outer query returns users with more than 3 bookings.


---

## 🧠 Learning Outcomes

By completing this task, you will:

* Understand the difference between **correlated** and **non-correlated** subqueries.
* Learn how subqueries can be used to filter, aggregate, and compare data.
* Be able to apply subqueries in real-world database scenarios like bookings and reviews.

---

## ✅ Summary Table

| Task | Subquery Type  | Purpose                               |
| ---- | -------------- | ------------------------------------- |
| 1    | Non-Correlated | Filter properties by avg rating > 4.0 |
| 2    | Correlated     | Filter users with > 3 bookings        |

---