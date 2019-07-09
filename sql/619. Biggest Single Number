/* Write your T-SQL query statement below */
with result as(select top 1 s.num
    from (select num, count(*) as cnt
            from my_numbers
            group by num) as s
    where s.cnt = 1
    order by s.num desc)
    
    
    select max(num) as num /* because of max query will return null in case of blank */ 
            from result
            
            
            
   
