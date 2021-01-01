SELECT country_name,
       posi_to_play,
       count(*) AS "Number of goals"
FROM goal_details a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON a.team_id=c.country_id
GROUP BY country_name,
         posi_to_play
ORDER BY country_name;