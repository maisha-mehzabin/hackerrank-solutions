-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 06:12 p.m.
-- ──────────────────────────────────────────────────

select co.continent , floor(avg(c.population))
from city c
join country co on co.code = c.countrycode 
group by continent
