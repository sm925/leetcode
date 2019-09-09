/* Write your T-SQL query statement below */

select s.seat_id 
    from
    (select seat_id,
            free,
            lead(free) over(order by seat_id asc) as ld,
            lag(free) over(order by seat_id asc) as lg from
            cinema) s
    where s.free + cast(s.ld as int) >= 2 or s.free + cast(s.lg as int) >= 2
        
