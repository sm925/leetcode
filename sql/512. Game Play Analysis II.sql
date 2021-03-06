/* Write your T-SQL query statement below */
with result as (select player_id, device_id, event_date,
                       min(event_date) over(partition by player_id) as min_date
                       from activity)
                       
                       
                       
select player_id, device_id
    from result
    where event_date = min_date


##################################################################################################


/* Write your T-SQL query statement below */

with first as (
    select player_id, device_id,
    dense_rank() over(partition by player_id order by event_date asc) as rank 
        from activity 
)
select player_id, device_id from first where rank = 1
