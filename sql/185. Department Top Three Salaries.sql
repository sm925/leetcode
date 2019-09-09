/* Write your T-SQL query statement below */
select sub.Department, sub.Employee, sub.Salary
    from
        (select s.department, s.employee, s.Salary,
            dense_rank() over(partition by s.department order by s.salary desc) as rank
            from 
            (select d.name as Department, e.name as Employee, e.Salary
            from employee e
            left join department d
            on e.departmentid = d.id) s ) sub
    where sub.rank <= 3 and sub.Department is not null
    order by sub.salary desc
