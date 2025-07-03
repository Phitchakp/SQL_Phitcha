-- in August 2022. Display the IDs of these 2 users along with the total number of messages they sent.


-- ## COUNT >> how many rows of messages in group by ID, return all values (duplicated).
SELECT sender_id, COUNT(content) AS messages_count          -- CONUT
FROM messages
WHERE DATE_PART('month', sen_date :: DATE) =8
    and DATE_PART('year', sen_date :: DATE) =2022
    GROUP BY sender_id
ORDER BY COUNT(content) DESC
LIMIT 2                                                     -- Limit == display only 2 rows
;


-- ## COUNT(DISTINCT) >> return only distinct (different) values.
SELECT COUNT(DISTINCT var) AS kk
FROM k_table
;


-- ## LENGTH >>  return the number of characters
SELECT LENGTH(var) AS kk
FROM k_table
;
