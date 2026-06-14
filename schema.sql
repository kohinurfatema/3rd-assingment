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

-- Matches Table
CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    fixture VARCHAR(255) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price NUMERIC(10, 2) NOT NULL,
    match_status VARCHAR(50) NOT NULL CHECK (match_status IN ('Available', 'Selling Fast', 'Sold Out', 'Postponed'))
);
