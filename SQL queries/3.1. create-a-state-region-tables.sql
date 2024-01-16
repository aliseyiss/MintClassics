
--Total quantity ordered based on region for USA
SELECT  sr.regionName
        ,SUM(od.quantityOrdered)     
FROM orderdetails od 
    JOIN orders o
        ON o.orderNumber = od.orderNumber 
    JOIN customers c
        ON c.customerNumber = o.customerNumber
    JOIN states s
        ON c.state = s.stateName
    INNER JOIN stateRegions sr 
        ON s.regionCode = sr.regionCode
WHERE c.country = 'USA'
GROUP BY    sr.regionName