select id, name from 
    students s where 
    department_id not in (select department_id from students inner join departments d on department_id = d.id) 
