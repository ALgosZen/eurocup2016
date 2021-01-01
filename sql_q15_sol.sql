SELECT c.referee_name,
       count(b.match_no) "Most Players booked"
FROM player_booked a
JOIN match_mast b ON a.match_no=b.match_no
JOIN referee_mast c ON b.referee_id=c.referee_id
GROUP BY referee_name
HAVING count(b.match_no)=
  (SELECT max(mm)
   FROM
     (SELECT count(b.match_no) mm
      FROM player_booked a
      JOIN match_mast b ON a.match_no=b.match_no
      JOIN referee_mast c ON b.referee_id=c.referee_id
      GROUP BY referee_name) hh);