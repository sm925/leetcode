/* Write your T-SQL query statement below */
with result as(
    select id, status, request_at
    from trips 
    where client_id  
    not in (select users_id from users where banned = 'Yes')
    or driver_id
    not in (select users_id from users where banned = 'Yes')
    and request_at between '2013-10-01' and '2013-10-03'),
    
 result1 as(select request_at as Day,
        count(request_at) over(partition by request_at) as total_cnt,
        count(case when status = 'cancelled_by_client' then request_at
                    when status = 'cancelled_by_driver' then request_at
                    end) over(partition by request_at) as cancel_cnt
        from result)
        
select *
    from result1
    
