
SELECT match_no, Booked FROM (
SELECT match_no,COUNT(*) Booked 
FROM player_booked  
GROUP BY match_no) M1 where Booked=(
SELECT MAX(C1) 
FROM (SELECT match_no,COUNT(*) C1 
FROM player_booked  
GROUP BY match_no) M2);