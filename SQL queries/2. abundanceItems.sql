-- Active: 1705063971241@@127.0.0.1@3308@project
--Calculate the abundance of items in the inventory
CREATE VIEW abundanceItems AS
SELECT 
    productCode
    ,productName
    ,quantityInStock
    ,totalItemsOrdered 
    ,(quantityInStock - totalItemsOrdered) AS inventoryAbundance
FROM  itemsStored
ORDER BY 
    inventoryAbundance DESC;