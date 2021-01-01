SELECT country_name,
       count(DISTINCT match_no) "Count of Asst. referees"
FROM match_details a
JOIN asst_referee_mast c ON a.ass_ref=c.ass_ref_id
JOIN soccer_country b ON c.country_id=b.country_id
GROUP BY country_name
HAVING count(DISTINCT match_no)=
  (SELECT max(mm)
   FROM
     (SELECT count(DISTINCT match_no) mm
      FROM match_details a
      JOIN asst_referee_mast c ON a.ass_ref=c.ass_ref_id
      JOIN soccer_country b ON c.country_id=b.country_id
      GROUP BY country_name) hh);