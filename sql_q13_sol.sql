SELECT distinct(player_name)
FROM goal_details a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON a.team_id=c.country_id
WHERE posi_to_play='DF'
ORDER BY player_name;