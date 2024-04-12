-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+



SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs)
FROM teams 
INNER JOIN stats ON stats.team_id = teams.id
INNER JOIN players ON players.id = stats.player_id
WHERE year = 2019
LIMIT 1;




SELECT teams.name, players.first_name, players.last_name, stats.home_runs
FROM teams 
INNER JOIN stats ON stats.team_id = teams.id
INNER JOIN players ON players.id = stats.player_id
WHERE year = 2019
ORDER BY stats.home_runs DESC
LIMIT 1;