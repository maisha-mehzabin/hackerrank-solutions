-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 08:19 p.m.
-- ──────────────────────────────────────────────────

SELECT *
FROM CITY  
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000
