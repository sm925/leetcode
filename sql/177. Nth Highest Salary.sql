CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select max(s.salary) as getNthHighestSalary
            from (select salary,
                    dense_rank() over(order by salary desc) as rank
                    from employee)s
            where s.rank = @N
    );
END
