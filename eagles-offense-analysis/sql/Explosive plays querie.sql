SELECT
    season,
    SUM(CASE WHEN play_type = 'pass' AND yards_gained >= 20 THEN 1 ELSE 0 END) AS explosive_pass,
    SUM(CASE WHEN play_type = 'run' AND yards_gained >= 10 THEN 1 ELSE 0 END) AS explosive_run
FROM plays
WHERE play_type IN ('pass','run')
GROUP BY season
ORDER BY season;