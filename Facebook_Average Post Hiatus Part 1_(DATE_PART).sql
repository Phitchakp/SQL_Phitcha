-- The days between each user's first and last post in 2021.


/* ##
    DATE_PART('part', variable)
    ::DATE == converting variable to a DATE type
*/

SELECT user_id, 
    MAX(post_date :: DATE) - MIN(post_date :: DATE) AS day_between
FROM posts
WHERE DATE_PART('year', post_date :: DATE) = 2021
    GROUP BY user_id
    HAVING MAX(post_date :: DATE) - MIN(post_date :: DATE) >1
;




-- ************************************************************************************--
WHERE DATE_PART('year', date '2021-06-21');                     -- Return = 2021
WHERE DATE_PART('month', timestamp  '2024-12-05 15:30:00');     -- Return = 12
WHERE DATE_PART('day', NOW());  				                -- Returns the current day of the month
'year' /  'month' /  'day' /  'hour' /  'minute' /  'second'

-- ## Max Date
SELECT user_id, MAX(post_date::DATE) AS max_date	 
FROM posts
  GROUP BY user_id
;

-- ## Between Date
SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
  GROUP BY user_id
;

-- ## Between Date > 1 Day
SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
  GROUP BY user_id
  HAVING MAX(post_date::DATE) - MIN(post_date::DATE) >1
;

-- ## Between Date > 1 Day + in the year 2021
SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
WHERE date_part('year', post_date::DATE) = 2021
  GROUP BY user_id
  HAVING MAX(post_date::DATE) - MIN(post_date::DATE) >1
;
