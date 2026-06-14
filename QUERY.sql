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
