-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
-- Problem     Weather Observation Station 2
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 09:45 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT ROUND(SUM(LAT_N),2) AS LAT, ROUND(SUM(LONG_W),2) AS LON
FROM STATION 
