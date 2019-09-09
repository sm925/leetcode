/* Write your T-SQL query statement below */
with result as(select s.buyer_id, s.product_id, p.product_name 
               from sales s
               join product p
               on s.product_id = p.product_id)
               
               select distinct buyer_id
                from result
                where product_name = 'S8' and
                buyer_id not in (select distinct buyer_id from result where product_name = 'iPhone')
