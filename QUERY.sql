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
