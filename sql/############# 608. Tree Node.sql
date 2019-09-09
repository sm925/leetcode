/* Write your T-SQL query statement below */
with result as (
                select id, p_id, count(*) over (order by id)as cnt from tree
)

select id, 
       case when p_id is null then 'Root'
            when cnt = 1 then 'Root'
            when id = (select distinct x.id
    from result x 
    join result y
    on x.id = y.p_id
    where x.p_id is not null) then 'Inner'
    else 'Leaf' end as Type
    from result

