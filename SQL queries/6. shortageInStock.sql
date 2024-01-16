-- Active: 1705063971241@@127.0.0.1@3308@project
--Find out the shortage of products in inventory
CREATE VIEW shortageInStock AS
SELECT  productCode
        ,productName
        ,unitPrice
        ,totalItemsOrdered
        ,totalSale
        ,quantityInStock
        ,(quantityInStock - totalItemsOrdered) AS quantityShortage
FROM productsByTotalSales
GROUP BY    productCode
            ,productName 
HAVING quantityShortage <= 0
ORDER BY totalSale DESC;