/* Write your T-SQL query statement below */

select s.extra as report_reason, s.cnt as report_count
    from (select sub.extra, count(*) as cnt
            from (select distinct post_id, action_date, action, extra from actions where action_date = (select DATEADD(day, -1, '2019-07-05')) and extra is not null and action = 'report') sub
            group by sub.extra) s
    where s.cnt > 0
    
    
