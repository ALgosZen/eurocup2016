SELECT * FROM player_mast where playing_club like 'Liverpool%' and team_id in 
	(select country_id from soccer_country where country_name='England');