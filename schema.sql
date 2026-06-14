-- =============================================
-- Football Ticket Booking System
-- Database Schema
-- =============================================

-- Users Table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    role VARCHAR(50) NOT NULL CHECK (role IN ('Football Fan', 'Ticket Manager')),
    phone_number VARCHAR(20)
);
