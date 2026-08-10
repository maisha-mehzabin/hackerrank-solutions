-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/contests/cse302-database-odyssey-summer-26/challenges/contest-leaderboard/problem?isFullScreen=true
-- Problem     Contest Leaderboard
-- Difficulty  Medium
-- Subdomain   SQL
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-10, 12:43 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT h.hacker_id, h.name, SUM(max_score) AS total_score
FROM hackers h
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM submissions
    GROUP BY hacker_id, challenge_id
) s
ON h.hacker_id = s.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id ASC
