SELECT player_name,jersey_no,playing_club FROM player_mast p
JOIN soccer_country s ON p.team_id = s.country_id
and posi_to_play = 'GK' and country_name = 'England'