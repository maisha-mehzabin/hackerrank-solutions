-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 06:03 p.m.
-- ──────────────────────────────────────────────────

select c.name
from city c
join country co on co.code = c.countrycode 
where co.continent = 'Africa'
