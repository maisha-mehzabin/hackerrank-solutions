-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
-- Problem     Weather Observation Station 12
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 09:13 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT DISTINCT CITY
FROM STATION 
WHERE (CITY not like 'a%' and CITY not like 'e%' and CITY not like 'i%' and CITY not like 'o%' and CITY not like 'u%' )
and (CITY not like '%a' and CITY not like '%e' and CITY not like '%i' and CITY not like '%o' and CITY not like '%u')
