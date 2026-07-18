# Write your MySQL query statement below
select t.request_at as Day ,
Round(SUM(CASE WHEN t.status = 'completed' THEN 0 ELSE 1 END)/ count(*),2) as "Cancellation Rate"
from Trips as t
join Users  as c on  t.client_id=c.users_id
join Users as d on t.driver_id=d.users_id
where c.banned='No'
and d.banned='No'
and t.request_at between '2013-10-01' and '2013-10-03'
group by request_at

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna