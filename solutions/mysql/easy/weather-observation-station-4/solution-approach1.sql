-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Problem     Weather Observation Station 4
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 08:30 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS difference 
FROM STATION
