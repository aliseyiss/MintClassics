-- Active: 1705063971241@@127.0.0.1@3308@project
--Products by total sales compared with quantity in stock
CREATE VIEW productsByTotalSales AS
SELECT  p.productCode
        ,p.productName
        ,p.buyPrice AS unitPrice
        ,SUM(od.quantityOrdered) AS totalItemsOrdered
        ,(p.buyPrice * SUM(od.quantityOrdered)) AS totalSale
        ,quantityInStock
FROM project.products p  
    LEFT JOIN project.orderdetails od
        ON p.productCode = od.productCode
GROUP BY    p.productCode
            ,p.productName      
ORDER BY totalSale DESC;