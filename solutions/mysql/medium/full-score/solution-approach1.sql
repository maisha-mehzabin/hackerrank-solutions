-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
-- Problem     Top Competitors
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-10, 12:44 a.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT h.hacker_id, h.name
FROM hackers h
JOIN submissions s ON h.hacker_id = s.hacker_id
JOIN challenges c ON s.challenge_id = c.challenge_id
JOIN difficulty d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, h.hacker_id ASC
