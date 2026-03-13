SELECT
    season,
    play_type,
    ROUND(AVG(epa), 3) AS avg_epa,
    ROUND(AVG(yards_gained), 2) AS avg_yards
FROM plays
WHERE play_type IN ('pass', 'run')
GROUP BY season, play_type
ORDER BY season, play_type;