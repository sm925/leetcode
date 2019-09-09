/* Write your T-SQL query statement below */

select distinct s.project_id, 
    round(avg(cast(s.experience_years as decimal)) over(partition by s.project_id), 2) as average_years
    from (select p.project_id, p.employee_id, e.experience_years
                 from project p
                 left join employee e
                 on p.employee_id = e.employee_id) as s
