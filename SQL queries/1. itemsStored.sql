
--List the items stored
CREATE VIEW itemsStored AS
SELECT  p.productCode
        ,p.productName
        ,p.quantityInStock
        ,SUM(od.quantityOrdered) AS totalItemsOrdered
FROM project.products p  
    LEFT JOIN project.orderdetails od
        ON p.productCode = od.productCode
GROUP BY    p.productCode
            ,p.productName
            ,p.quantityInStock;