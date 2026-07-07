# Write your MySQL query statement below
(select u.name as results from MovieRating mr
join Users u on mr.user_id=u.user_id
group by mr.user_id 
order by 
count(movie_id) desc,u.name asc
limit 1)
union all
(select m.title as results from MovieRating mr
join Movies m on mr.movie_id=m.movie_id
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
group by mr.movie_id
order by avg(mr.rating) desc,m.title asc
limit 1)


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna