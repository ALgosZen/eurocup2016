select match_no, country_id, country_name from match_details m
JOIN soccer_country s ON s.country_id=m.team_id
where match_no in 
	(SELECT match_no from match_details where penalty_score = (select max(penalty_score) from match_details))