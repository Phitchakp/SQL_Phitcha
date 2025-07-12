SELECT 
    query_name,
    ROUND(AVG(rating/position), 2) AS quality,
    ROUND(SUM(IF(rating<3, 1, 0)) / COUNT(*) * 100, 2) AS poor_query_percentage 
    -- COUNT(IF(rating<3, 1, 0)) / COUNT(*) * 100 AS poor_query_percentage  
    -- SUM(IF) better  than COUNT(IF) , Count(IF) = 1/1, Sum(IF) = 1/3

FROM Queries 
GROUP BY query_name 
;