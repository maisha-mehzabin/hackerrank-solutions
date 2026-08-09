-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Problem     Challenges
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-10, 01:50 a.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/ SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS cnt
FROM hackers h
JOIN challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING cnt = (
        SELECT MAX(t.cnt)
        FROM (SELECT COUNT(*) AS cnt FROM challenges GROUP BY hacker_id) t
     )
   OR cnt NOT IN (
        SELECT t2.cnt
        FROM (SELECT COUNT(*) AS cnt FROM challenges GROUP BY hacker_id) t2
        GROUP BY t2.cnt
        HAVING COUNT(*) > 1
     )
ORDER BY cnt DESC, h.hacker_id;
