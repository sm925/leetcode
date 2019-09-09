using cte:
/* Write your T-SQL query statement below */
with s as(select seller_id, sum(price) as sum_price 
            from sales 
            group by seller_id
           )
select seller_id 
    from s
    where sum_price = (select max(sum_price) from s);
  
    
using window fucntion:
/* Write your T-SQL query statement below */

WITH summary AS (
    select seller_id, 
    dense_rank() over(order by sum(price) desc) as 'rank'
                        from sales group by seller_id
    ) 
select seller_id from summary where rank = 1
