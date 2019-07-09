/* Write your T-SQL query statement below */
select s.id,
    case when s.id % 2 = 0 and s.lg is not null and s.ld is not null then s.lg
         when s.lg is null and s.id = 1 and s.ld is not null then s.ld
         when s.id % 2 = 1 and s.lg is not null and s.ld is not null then s.ld
         when s.ld is null and s.id % 2 = 1 then s.st
         when s.ld is null and s.id % 2 = 0 then s.lg
         when s.lg is null and s.id = 1 and s.ld is null then s.st
         end as student 
    from 
    (select id, student as st,
    lead(student) over(order by id asc) as ld,
    lag(student) over(order by id asc) as lg
    from seat) s
