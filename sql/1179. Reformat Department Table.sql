select distinct id,
    Jan_Revenue = MAX(CASE WHEN month = 'Jan' THEN revenue ELSE Null END),
    Feb_Revenue= MAX(CASE WHEN month = 'Feb' THEN revenue ELSE Null END),
    Mar_Revenue= MAX(CASE WHEN month = 'Mar' THEN revenue ELSE Null END),
    Apr_Revenue= MAX(CASE WHEN month = 'Apr' THEN revenue ELSE Null END),
    May_Revenue= MAX(CASE WHEN month = 'May' THEN revenue ELSE Null END),
    Jun_Revenue= MAX(CASE WHEN month = 'Jun' THEN revenue ELSE Null END),
    Jul_Revenue= MAX(CASE WHEN month = 'Jul' THEN revenue ELSE Null END),
    Aug_Revenue= MAX(CASE WHEN month = 'Aug' THEN revenue ELSE Null END),
    Sep_Revenue= MAX(CASE WHEN month = 'Sep' THEN revenue ELSE Null END),
    Oct_Revenue= MAX(CASE WHEN month = 'Oct' THEN revenue ELSE Null END),
    Nov_Revenue= MAX(CASE WHEN month = 'Nov' THEN revenue ELSE Null END),
    Dec_Revenue= MAX(CASE WHEN month = 'Dec' THEN revenue ELSE Null END)
    from department
    group by id
    
