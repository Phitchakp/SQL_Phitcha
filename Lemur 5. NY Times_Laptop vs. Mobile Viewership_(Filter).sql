-- Q : The total viewership for laptops and mobile devices, where mobile is defined as the sum of tablet and phone


--## SUM(IF(condition, 1, 0))
SELECT
    SUM(IF(device_type = 'laptop', 1, 0)) AS laptop_reviews,
    SUM(IF(device_type IN ('tablet', 'phone'), 1, 0)) AS mobile_reviews
FROM viewership
;


--## COUNT + FILTER + (WHERE…) + AS …
SELECT
    COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_reviews,
    COUNT(*) FILTER (WHERE device_type IN ('tablet', 'phone')) AS mobile_reviews
FROM viewership
;
