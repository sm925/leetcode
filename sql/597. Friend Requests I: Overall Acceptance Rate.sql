/* Write your T-SQL query statement below */

with result as(
select count(*) as cnt
    from (select distinct requester_id, accepter_id from request_accepted) a),
    
    

result1 as(select count(*) as cnt
    from (select distinct sender_id, send_to_id from friend_request) r)
    
    
select round(isnull(cast(result.cnt as decimal) / nullif(cast(result1.cnt as decimal), 0), 0), 2) as accept_rate 
    from result, result1 
    
