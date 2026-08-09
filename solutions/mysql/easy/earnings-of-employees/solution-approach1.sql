-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 09:43 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT SALARY*MONTHS AS EARNINGS , COUNT(*) AS TOTAL_NUMBER
FROM EMPLOYEE
GROUP BY EARNINGS 
ORDER BY EARNINGS DESC
LIMIT 1 
