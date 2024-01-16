--CREATE VIEW inventoryDetails AS
SELECT 
    w.warehouseName
    ,p.productCode
    ,p.productName
    ,SUM(p.quantityInStock) AS inventoryTotal
    ,inventoryAbundance
FROM products p 
    JOIN   warehouses w
        ON p.warehouseCode = w.warehouseCode
    JOIN abundanceItems on p.productCode = abundanceItems.productCode
GROUP BY    w.warehouseName
            ,p.productCode
            ,p.productName
ORDER BY inventoryTotal DESC;