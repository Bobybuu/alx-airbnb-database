---

# 🏨 ALX Airbnb Advanced SQL Project

## 📁 Directory: `database-adv-script`

This project is part of the **ALX Software Engineering Program**, focused on mastering advanced SQL techniques in the context of an Airbnb-like platform. It covers complex queries using joins, subqueries, aggregations, performance tuning, indexing, and partitioning.

---

## ✅ Project Overview

| Task No. | Topic                            | Objective |
|----------|----------------------------------|-----------|
| 0        | Write Complex Queries with Joins | Master SQL joins |
| 1        | Practice Subqueries              | Use correlated and non-correlated subqueries |
| 2        | Apply Aggregations and Window Functions | Use aggregate and ranking functions |
| 3        | Implement Indexes for Optimization | Improve performance using indexes |
| 4        | Optimize Complex Queries         | Refactor for better query performance |
| 5        | Partitioning Large Tables        | Optimize queries with table partitioning |
| 6        | Monitor and Refine Performance   | Use tools to monitor and improve query performance |

---

## 📘 Task Descriptions & Deliverables

### 0. Write Complex Queries with Joins

**Objective:** Master SQL joins by writing complex queries using `INNER`, `LEFT`, and `FULL OUTER JOIN`.

**Instructions:**
- Use an `INNER JOIN` to retrieve all bookings with their respective users.
- Use a `LEFT JOIN` to retrieve all properties and their reviews, including properties with no reviews.
- Use a `FULL OUTER JOIN` to retrieve all users and all bookings, even unmatched ones.

**File:** `joins_queries.sql`

---

### 1. Practice Subqueries

**Objective:** Write both correlated and non-correlated subqueries.

**Instructions:**
- Write a query to find all properties where the average rating is greater than 4.0 using a non-correlated subquery.
- Write a correlated subquery to find users who have made more than 3 bookings.

**File:** `subqueries.sql`

---

### 2. Apply Aggregations and Window Functions

**Objective:** Use aggregation and window functions to analyze booking and property data.

**Instructions:**
- Use `COUNT` and `GROUP BY` to find total bookings per user.
- Use `ROW_NUMBER` or `RANK` to rank properties by the number of bookings.

**File:** `aggregations_and_window_functions.sql`

---

### 3. Implement Indexes for Optimization

**Objective:** Improve query performance using indexing.

**Instructions:**
- Identify frequently used columns in `User`, `Booking`, and `Property` tables.
- Create indexes using `CREATE INDEX` statements.
- Measure performance before and after indexing using `EXPLAIN` or `ANALYZE`.

**File:** `database_index.sql` and report in `index_performance.md`

---

### 4. Optimize Complex Queries

**Objective:** Refactor inefficient queries for better performance.

**Instructions:**
- Write a query to retrieve all bookings with user, property, and payment details.
- Analyze it with `EXPLAIN`.
- Refactor to optimize joins or indexing and document the improvements.

**Files:**
- Initial and optimized query: `perfomance.sql`
- Performance analysis report: `optimization_report.md`

---

### 5. Partitioning Large Tables

**Objective:** Use table partitioning to optimize large datasets.

**Instructions:**
- Partition the `Booking` table based on `start_date`.
- Test and compare query performance.
- Document improvements.

**Files:**
- SQL implementation: `partitioning.sql`
- Report: `partition_performance.md`

---

### 6. Monitor and Refine Database Performance

**Objective:** Monitor queries and refine schema or indexing for optimal performance.

**Instructions:**
- Use tools like `SHOW PROFILE`, `EXPLAIN ANALYZE` to monitor key queries.
- Identify bottlenecks.
- Propose and implement improvements.

**File:** `performance_monitoring.md`

---

## 🗃️ Repository Structure

```

alx-airbnb-database/
└── database-adv-script/
├── joins\_queries.sql
├── subqueries.sql
├── aggregations\_and\_window\_functions.sql
├── database\_index.sql
├── index\_performance.md
├── perfomance.sql
├── optimization\_report.md
├── partitioning.sql
├── partition\_performance.md
└── performance\_monitoring.md

```

---

## 🧠 Skills Demonstrated

- SQL Joins (INNER, LEFT, FULL OUTER)
- Subqueries (correlated & non-correlated)
- Aggregation & Window Functions
- Indexing & Query Optimization
- Table Partitioning
- Performance Monitoring & Refactoring

---

## 🧪 Tools & Commands Used

- SQL (MySQL/PostgreSQL)
- `EXPLAIN`, `ANALYZE`, `SHOW PROFILE`
- `CREATE INDEX`, `PARTITION BY`
- `ROW_NUMBER()`, `RANK()`, `COUNT()`, `GROUP BY`

---

## 📍 Author

**Chrispin Odiwuor** – ALX Software Engineering Student  
📚 Project: `alx-airbnb-database`  
🎯 Goal: Build performant, scalable SQL database systems

---