# 🏗️ Airbnb Database - Script 0x02

This directory contains the core SQL scripts to define and populate the Airbnb clone database.

---

## 📁 Files

### 1. `schema.sql`
Defines the structure of the relational database using SQL `CREATE TABLE` statements.  
It includes:
- Six core tables: `users`, `properties`, `bookings`, `payments`, `reviews`, and `messages`
- Data types and constraints (e.g., `NOT NULL`, `CHECK`, `ENUM`)
- Primary and Foreign key relationships
- Indexes for optimized performance on frequently queried columns

### 2. `seed.sql`
Provides sample data to simulate real-world usage of the Airbnb system.  
The script populates:
- 10 users (hosts, guests, admin)
- 10 properties across different locations
- 10 bookings linked to users and properties
- 10 corresponding payment records
- 10 reviews from guests about properties
- 10 messages exchanged between guests and hosts

---

## 🛠️ Usage

To set up the databases and seed it with sample data:

1. Run the schema to create all tables:
   ```bash
   psql -U your_user -d your_database -f schema.sql