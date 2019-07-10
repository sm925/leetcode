/* Write your T-SQL query statement below */
select sub.Department, sub.Employee, sub.Salary
    from
        (select s.department, s.employee, s.Salary,
            max(s.Salary) over(partition by s.department) as max_salary
            from 
            (select d.name as Department, e.name as Employee, e.Salary
            from employee e
            left join department d
            on e.departmentid = d.id) s ) sub
    where sub.Salary = sub.max_salary and sub.Department is not null
    order by sub.salary desc
