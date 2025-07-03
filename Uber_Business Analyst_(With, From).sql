-- Query to extract the second post of every user


-- ## WITH + FROM >> create new function name k 
WITH k AS (
    SELECT *,
        ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY post_id) AS n_num       -- ROW_NUMBER == create new column count over ...
        COUNT(post_id) OVER(PARTITION BY user_id) AS c_post                     -- OVER(PARTITION BY == GROUP BY, ORDER BY __ DESC)
    FROM posts
)
SELECT user_id, post_id, n_num
FROM k
WHERE n_num =2
;



-- https://www.sqlshack.com/sql-partition-by-clause-overview/
