# Football Ticket Booking System

A database design and SQL query project for managing football fans, tournament matches, and ticket booking records.

---

## Features

- Normalized database schema with 3 related tables
- Role-based user model (Football Fan / Ticket Manager)
- Ticket booking system with seat assignment and payment tracking
- Complex SQL queries: JOINs, subqueries, NULL handling, pagination

---

## Tech Stack

| Technology | Usage |
|---|---|
| PostgreSQL | Relational database |
| SQL | Schema design and queries |

---

## Database Schema

### users
| Column | Type | Notes |
|---|---|---|
| user_id | SERIAL | Primary key |
| full_name | VARCHAR(255) | Required |
| email | VARCHAR(255) | Unique, required |
| role | VARCHAR(50) | Football Fan or Ticket Manager |
| phone_number | VARCHAR(20) | Optional (nullable) |

### matches
| Column | Type | Notes |
|---|---|---|
| match_id | INT | Primary key |
| fixture | VARCHAR(255) | Competing teams |
| tournament_category | VARCHAR(100) | League or cup name |
| base_ticket_price | NUMERIC(10,2) | Standard entry price |
| match_status | VARCHAR(50) | Available, Selling Fast, Sold Out, Postponed |

### bookings
| Column | Type | Notes |
|---|---|---|
| booking_id | INT | Primary key |
| user_id | INT | FK references users.user_id |
| match_id | INT | FK references matches.match_id |
| seat_number | VARCHAR(10) | Allocated seat (nullable) |
| payment_status | VARCHAR(20) | Pending, Confirmed, Cancelled, Refunded |
| total_cost | NUMERIC(10,2) | Final invoice price |

---

## Relationships

- **One to Many**: One user can have many bookings
- **Many to One**: Many bookings reference one match
- **One to One (logical)**: Each booking row maps exactly one user to one match for that specific seat

---

## SQL Files

| File | Description |
|---|---|
| `schema.sql` | Table creation and sample data inserts |
| `QUERY.sql` | All 7 SQL queries with comments |

---

## Setup

1. Create a PostgreSQL database
2. Run `schema.sql` to create tables and insert sample data
3. Run queries from `QUERY.sql` to verify outputs
