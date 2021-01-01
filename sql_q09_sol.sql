SELECT player_name, jersey_no FROM player_mast where posi_to_play = 'GK' and team_id in 
	(select country_id from soccer_country where country_name='Germany');