-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
-- Problem     Employee Salaries
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 09:22 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT NAME 
FROM EMPLOYEE 
WHERE SALARY>2000 AND MONTHS<10 
ORDER BY EMPLOYEE_ID 
