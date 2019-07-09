/* Write your T-SQL query statement below */
with result as (
                select player_id, event_date,
                sum(games_played) over(partition by player_id order by event_date rows between unbounded preceding and current row) as games_played_so_far
                from activity
)
select * from result
