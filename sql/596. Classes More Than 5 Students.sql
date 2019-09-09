--- using subquery
/* Write your T-SQL query statement below */
select sub.class 
    from (select s.class, count(*) as cnt 
            from (select distinct student, class 
                    from courses)s
            group by s.class) sub
    where sub.cnt >= 5
    
    
    
 ########################################################
 
 
 --- using cte 
 /* Write your T-SQL query statement below */
with r as (
select a.class, count(*) as cnt
    from (select distinct student, class from courses)a
    group by a.class
)
select class from r where cnt >= 5
