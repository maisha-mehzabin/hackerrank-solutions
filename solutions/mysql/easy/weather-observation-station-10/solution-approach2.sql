-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
-- Problem     Weather Observation Station 10
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 08:50 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT DISTINCT CITY
FROM STATION
WHERE ( city not like '%a' and
city not like '%e' and
city not like '%i' and
city not like '%o' and
city not like '%u')

