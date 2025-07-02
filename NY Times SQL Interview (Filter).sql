-- The total viewership for laptops and mobile devices, where mobile is defined as the sum of tablet and phone

-- COUNT + FILTER + (WHERE…) + AS …

SELECT
    COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_reviews,
    COUNT(*) FILTER (WHERE device_type IN ('tablet', 'phone')) AS mobile_reviews
FROM viewership
;
