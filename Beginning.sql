-- Sequence Words
SELECT *
FROM k_table
    WHERE
    GROUP BY
    HAVING
    ORDER BY
    LIMIT
;

-- 1. Basic
SELECT COUNT(var),
     AVG(var),
     MIN(var),
     MAX(var),
     ((var+7)/100) AS NewSubTotal, 
     FirstName + ' ' + MiddleName + ' ' + b.LastName AS FULL 
FROM k_table
WHERE
WHERE NOT
    var > 2
    var <= 2
    var <> 2    --  Not Equal
    var IS NULL
    var IN NOT NULL
	var IN ('apple','banana') 
    var NOT IN ('apple','banana') 
    var LIKE '%ppl%'  
    var BETWEEN 2 AND 5 
    var BETWEEN '1996-07-01' AND '1996-07-31'
    var1 = 'apple' AND var2 LIKE '%b%' 
    var1 = 'apple' OR var2 LIKE '%b%' 
ORDER BY var DESC


-- 2. GROUP BY, HAVING
SELECT JobTitle,
    COUNT(JobTitle) AS count, 
    MAX(VacationHours) AS hr   
FROM HumanResources.Employee
	GROUP BY JobTitle ,VacationHours
	HAVING MAX(VacationHours) >2


-- 3. JOIN
SELECT a.BusinessEntityID,
    b.FirstName,
    b.FirstName + ' ' + b.MiddleName + ' ' + b.LastName AS 'FULL',
    c.ModifiedDate,
    d.AddressTypeID,
    e.*
FROM Person.BusinessEntityContact a
FULL OUTER JOIN Person.Person b
	ON a.BusinessEntityID = b.BusinessEntityID
INNER JOIN Person.BusinessEntity c
	ON b.BusinessEntityID = c.BusinessEntityID 
LEFT JOIN Person.BusinessEntityAddress d
	ON c.BusinessEntityID = d.BusinessEntityID
RIGHT JOIN Person.AddressType e
	ON d.AddressTypeID = e.AddressTypeID
WHERE a.BusinessEntityID IS NOT NULL
    AND c.ModifiedDate 
    BETWEEN '2017-11-01' AND '2017-12-13 13:20:25'
ORDER BY c.ModifiedDate
;


SELECT A.ACCOUNT_SERVICE_ID, 
    A.TRAN_TYPE, 
    B.TRAN_TYPE_CODE, 
    B.TRAN_TYPE_NAME_EN, 
    B.TRAN_TYPE_NAME_TH, 
    A.*, 
    *
FROM KOL_MST_MAPPING_SERVICE_TRANTYPE A
INNER JOIN KOL_MST_TRAN_TYPE B
    ON A.TRAN_TYPE = B.TRAN_TYPE AND A.ACCOUNT_SERVICE_ID = '2'
ORDER BY A.TRAN_TYPE
;



-- 4. INSERT INYO, UPDATE + SET + WHERE, DELETE FROM + WHERE


-- 5. Alter Table


-- 6. 