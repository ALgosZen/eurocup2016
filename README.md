# eurocup2016

Setup db , export dump and run following data science models


Sql commands sample:

CREATE DATABASE EUROCUP2016;

mysqlimport -h eurocup-db.mysql.database.azure.com -u mysql@eurocup-db -p --local --ignore-lines=1 --fields-terminated-by=, eurocup2016 /Users/greenbook/Downloads/data/soccer_venue.csv

docker run --restart always --name mysql:latest --local --net dev-network -v /Users/greenbook/ds-mysql-workbooks:/var/lib/mysql -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=[himuchi1] mysql:latest



https://ddf46429.springboard.com/uploads/resources/1599524775_Advanced_SQL_Mini-Project__Euro_Cup_1_.pdf

Please answer write the following queries:
1. Write a SQL query to find the date EURO Cup 2016 started on.

select play_date from match_mast where match_no =1
select min(play_Date) from match_mast

SELECT play_date "Started On"
FROM match_mast
WHERE match_no=1;


2. Write a SQL query to find the number of matches that were won by penalty shootout.
select distinct(decided_by) from match_mast
SELECT count(*) FROM match_details where win_lose = 'W' and decided_by = 'P'
SELECT count(*) FROM match_mast where results = 'WIN' and decided_by = 'P';

SELECT COUNT(DISTINCT match_no) 
FROM penalty_shootout;


3. Write a SQL query to find the match number, date, and score for matches in which
no stoppage time was added in the 1st half.
select * from match_mast where stop1_sec= 0
select m.match_no, m.play_date, d.goal_score from match_mast as m , match_details as d where m.stop1_sec= 0
select * from match_mast as m  where m.stop1_sec= 0

SELECT match_no, play_date, goal_score 
FROM  match_mast
WHERE stop1_sec=0;


4. Write a SQL query to compute a list showing the number of substitutions that
happened in various stages of play for the entire tournament.
SELECT play_half,play_schedule,COUNT(*) 
FROM player_in_out 
WHERE in_out='I'
GROUP BY play_half,play_schedule
ORDER BY play_half,play_schedule,count(*) DESC;



5. Write a SQL query to find the number of bookings that happened in stoppage time.
SELECT count(*) FROM player_booked where play_Schedule = 'ST';


6. Write a SQL query to find the number of matches that were won by a single point, but
do not include matches decided by penalty shootout.

SELECT COUNT(*) "Number of Matches"
FROM match_details 
WHERE win_lose='W' 
AND decided_by<>'P'
AND goal_score=1;


7. Write a SQL query to find all the venues where matches with penalty shootouts were
played.

SELECT match_no, play_stage, venue_name FROM match_mast m 
JOIN soccer_venue v ON m.venue_id= v.venue_id
where decided_by='P'
order by match_no



8. Write a SQL query to find the match number for the game with the highest number of
penalty shots, and which countries played that match.

soccer_country csv file was corrupt. Modified and imported again.

SET SQL_SAFE_UPDATES = 0;
Delete from soccer_country
SET SQL_SAFE_UPDATES = 1;
mysqlimport -h eurocup-db.mysql.database.azure.com -u mysql@eurocup-db -p --local --ignore-lines=1 --fields-terminated-by=, eurocup2016 /Users/greenbook/Downloads/data/soccer_country.csv

select country_name from soccer_country where country_id in 
	(select team_id from goal_Details where match_no in 
	(SELECT match_no from match_details where penalty_score = (select max(penalty_score) from match_details)))
 




9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for
Germany, who played in Germany’s group stage matches.

SELECT player_name, jersey_no FROM player_mast where posi_to_play = 'GK' and team_id in 
	(select country_id from soccer_country where country_name='Germany');



10. Write a SQL query to find all available information about the players under contract to
Liverpool F.C. playing for England in EURO Cup 2016.

SELECT * FROM player_mast where playing_club like 'Liverpool%' and team_id in 
	(select country_id from soccer_country where country_name='England');


11. Write a SQL query to find the players, their jersey number, and playing club who
were the goalkeepers for England in EURO Cup 2016.

SELECT player_name,jersey_no,playing_club FROM eurocup2016.player_mast where posi_to_play = 'GK' and team_id in 
	(select country_id from soccer_country where country_name='England');



12. Write a SQL query that returns the total number of goals scored by each position on
each country’s team. Do not include positions which scored no goals.

SELECT country_name,
       posi_to_play,
       count(*) AS "Number of goals"
FROM goal_details a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON a.team_id=c.country_id
GROUP BY country_name,
         posi_to_play
ORDER BY country_name;



13. Write a SQL query to find all the defenders who scored a goal for their teams.

SELECT distinct(player_name)
FROM goal_details a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON a.team_id=c.country_id
WHERE posi_to_play='DF'
ORDER BY player_name;



14. Write a SQL query to find referees and the number of bookings they made for the
entire tournament. Sort your answer by the number of bookings in descending order.

SELECT c.referee_name,
       count(b.match_no) "No of Bookings"
FROM player_booked a
JOIN match_mast b ON a.match_no=b.match_no
JOIN referee_mast c ON b.referee_id=c.referee_id
GROUP BY referee_name
ORDER BY count(b.match_no) DESC;



15. Write a SQL query to find the referees who booked the most number of players.
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



16. Write a SQL query to find referees and the number of matches they worked in each
venue.

SELECT c.referee_name,
       b.country_name,
       d.venue_name,
       count(a.match_no) "Matches refereed at this Venue"
FROM match_mast a
JOIN referee_mast c ON a.referee_id=c.referee_id
JOIN soccer_country b ON c.country_id=b.country_id
JOIN soccer_venue d ON a.venue_id=d.venue_id
GROUP BY c.referee_name,
         country_name,
         venue_name
ORDER BY referee_name;




17. Write a SQL query to find the country where the most assistant referees come from,
and the count of the assistant referees.

SELECT * FROM eurocup2016.referee_mast;
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
      

18. Write a SQL query to find the highest number of foul cards given in one match.

SELECT match_no, Booked FROM (
SELECT match_no,COUNT(*) Booked 
FROM player_booked  
GROUP BY match_no) M1 where Booked=(
SELECT MAX(C1) 
FROM (SELECT match_no,COUNT(*) C1 
FROM player_booked  
GROUP BY match_no) M2);



19. Write a SQL query to find the number of captains who were also goalkeepers.

SELECT match_no,
       country_name,
       player_name,
       jersey_no
FROM match_captain a
JOIN soccer_country b ON a.team_id=b.country_id
JOIN player_mast c ON a.player_captain=c.player_id
AND posi_to_play='GK'
ORDER BY match_no;

SELECT count(DISTINCT player_name)
FROM match_captain a
JOIN soccer_country b ON a.team_id=b.country_id
JOIN player_mast c ON a.player_captain=c.player_id
AND posi_to_play='GK';




20. Write a SQL query to find the substitute players who came into the field in the first
half of play, within a normal play schedule.

SELECT player_name,jersey_no,time_in_out
FROM player_in_out a
JOIN player_mast b ON a.player_id=b.player_id
WHERE a.in_out='I'
AND a.play_schedule='NT'
AND a.play_half=1
ORDER BY match_no;



Deliverables:
1. Individual SQL script for solution to each question (SQL file naming convention is sql_q<question number>_sol.sql e.g.- sql_q1_sol.sql, sql_q2_sol.sql, etc.)




