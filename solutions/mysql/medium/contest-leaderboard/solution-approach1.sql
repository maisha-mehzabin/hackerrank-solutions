-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
-- Problem     Contest Leaderboard
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-10, 01:49 a.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT h.hacker_id, h.name, SUM(sub.max_score) AS total_score
FROM hackers h
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM submissions
    GROUP BY hacker_id, challenge_id
) sub ON h.hacker_id = sub.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(sub.max_score) > 0
ORDER BY total_score DESC, h.hacker_id ASC;
