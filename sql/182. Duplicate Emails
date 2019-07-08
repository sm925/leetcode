/* Write your T-SQL query statement below */
select s.Email
    from (select Email, count(*) as cnt from person group by Email) s
    where s.cnt > 1
    
    
    
    ##################################################
    
    
    
    /* Write your T-SQL query statement below */
with dupe as(
select email, count(*) as cnt 
    from person group by email
)
select email from dupe where cnt > 1
