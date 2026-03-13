SELECT
    season,
    COUNT(*) AS total_plays,
    SUM(CASE WHEN play_type = 'pass' THEN 1 ELSE 0 END) AS pass_plays,
    SUM(CASE WHEN play_type = 'run' THEN 1 ELSE 0 END) AS run_plays
FROM plays
WHERE play_type IN ('pass', 'run')
GROUP BY season
ORDER BY season;