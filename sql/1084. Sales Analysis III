/* Write your T-SQL query statement below */
with result as (
                    select product_id,
                            sale_date, 
                            min(sale_date) over(partition by product_id) as min_date, 
                            max(sale_date) over(partition by product_id) as max_date
                            from sales
)   

select p.product_id, p.product_name
    from product p
    where p.product_id in (select r.product_id
                            from result r where (r.sale_date between '2019-01-01' and '2019-03-31') and (min_date between '2019-01-01' and '2019-03-31') and (max_date between '2019-01-01' and '2019-03-31'))
                            
                         
                         
                         
                         
                         
                         
                         
 #####################################################################################################
 
 
 /* Write your T-SQL query statement below */
with sp as(
    select product_id, min(sale_date) as min_date, max(sale_date) as max_date
    from sales group by product_id
    )
    
    select p.product_id, p.product_name from product p
    inner join sp on
    p.product_id = sp.product_id
    where sp.min_date >= '2019-01-01' and sp.max_date <= '2019-03-31'
     

                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
