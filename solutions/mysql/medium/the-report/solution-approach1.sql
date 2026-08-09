-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- Problem     The Report
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 10:49 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/ (SELECT s.name, g.grade, s.marks
FROM students s
JOIN grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
WHERE g.grade >= 8)

UNION

(SELECT NULL, g.grade, s.marks
FROM students s 
JOIN grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
WHERE g.grade < 8)

ORDER BY grade DESC, name ASC, marks ASC
