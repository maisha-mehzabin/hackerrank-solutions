-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- Problem     Weather Observation Station 20
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-09, 04:02 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT ROUND(AVG(LAT_N), 4) AS median_lat_n
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) AS ranked
WHERE row_num IN (
    FLOOR((total_rows + 1) / 2), 
    CEIL((total_rows + 1) / 2)
);
