SELECT match_no, play_stage, venue_name FROM match_mast m 
JOIN soccer_venue v ON m.venue_id= v.venue_id
where decided_by='P'
order by match_no