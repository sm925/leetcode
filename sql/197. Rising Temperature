/* Write your T-SQL query statement below */
select s.Id 
    from (select Id, recorddate, temperature,
            lag(temperature) over(order by recorddate asc) as prev_temp,
            lag(recorddate) over(order by recorddate asc) as prev_date
            from weather) s
    where s.temperature > s.prev_temp and s.prev_temp is not null and (SELECT DATEDIFF(day, s.prev_date, s.recorddate) AS DateDiff) = 1;
