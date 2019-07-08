/* Write your T-SQL query statement below */
with result as(select project_id, count(*) as cnt 
    from project 
    group by project_id),
    
   result1 as(select project_id, cnt,
           max(cnt) over() as max_cnt
           from result)
           
select project_id from result1 where cnt = max_cnt



###################################################################




    WITH results AS
(
    select project_id, count(*) as cnt
    from project group by project_id 
    
)
SELECT project_id
FROM results where cnt = (select max(cnt) from results)
