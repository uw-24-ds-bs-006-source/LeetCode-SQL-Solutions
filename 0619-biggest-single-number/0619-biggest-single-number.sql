# Write your MySQL query statement below
select max(num) as num from MyNumbers where num in (select num
From MyNumbers group by num Having count(*)=1)