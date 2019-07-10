/* Write your T-SQL query statement below */
select distinct sub.num as ConsecutiveNums 
    from (select s.num, s.idx, count(*) as cnt 
            from (select Id, Num, 
                         Id - row_number() over(partition by Num order by id asc) as idx
          from logs) s
          group by s.num, s.idx) sub
    where sub.cnt >= 3
