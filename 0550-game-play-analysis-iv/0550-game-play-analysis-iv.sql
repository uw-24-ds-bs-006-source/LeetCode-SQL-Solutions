# Write your MySQL query statement below
Select round(count(DISTINCT a.player_id)/(select count(Distinct player_id) from Activity),2) as fraction From Activity a Join(Select player_id, MIN(event_date) as first_date From Activity group by player_id) b
on a.player_id = b.player_id and a.event_date = DATE_ADD(b.first_date, INTERVAL 1 DAY)