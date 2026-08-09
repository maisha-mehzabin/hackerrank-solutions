-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 03:34 p.m.
-- ──────────────────────────────────────────────────

select sum(c.population)
from city c
join country co on c.countrycode = co.code 
where co.continent= 'Asia'
