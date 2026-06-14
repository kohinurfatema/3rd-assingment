-- =============================================
-- Football Ticket Booking System
-- SQL Queries
-- =============================================


-- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League'
-- where the match status is 'Available'.
SELECT match_id, fixture, base_ticket_price
FROM matches
WHERE tournament_category = 'Champions League'
  AND match_status = 'Available';


-- Query 2: Search for all users whose full names start with 'Tanvir' or contain
-- the phrase 'Haque' (case-insensitive).
-- Concepts: ILIKE
SELECT user_id, full_name, email
FROM users
WHERE full_name ILIKE 'Tanvir%'
   OR full_name ILIKE '%Haque%';


-- Query 3: Retrieve all booking records where the payment status is missing (NULL),
-- replacing the empty result with 'Action Required'.
-- Concepts: IS NULL, COALESCE
SELECT
    booking_id,
    user_id,
    match_id,
    COALESCE(payment_status, 'Action Required') AS systematic_status
FROM bookings
WHERE payment_status IS NULL;


-- Query 4: Retrieve match booking details along with the User's full name
-- and the scheduled Match fixture teams.
-- Concepts: INNER JOIN
SELECT b.booking_id, u.full_name, m.fixture, b.total_cost
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN matches m ON b.match_id = m.match_id;


-- Query 5: Display a comprehensive list of all users and their booking IDs,
-- ensuring that fans who have never bought a ticket are still listed.
-- Concepts: LEFT JOIN
SELECT u.user_id, u.full_name, b.booking_id
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id;
