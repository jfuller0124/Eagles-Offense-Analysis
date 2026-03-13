SELECT
    season,
    down,
    ROUND(AVG(CASE WHEN success = 1 THEN 1 ELSE 0 END) * 100, 1) AS success_rate
FROM plays
WHERE play_type IN ('pass', 'run')
  AND down IS NOT NULL
GROUP BY season, down
ORDER BY season, down;