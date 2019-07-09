/* Write your T-SQL query statement below */

select max(s.salary) as SecondHighestSalary
    from (select salary from employee where salary != (select max(salary) from employee)) s
    
