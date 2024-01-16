-- Active: 1705063971241@@127.0.0.1@3308@project
--Create total inventory in warehouses
CREATE VIEW warehouseInventoryDetails AS
SELECT  w.warehouseCode
        ,w.warehouseName
        ,SUM(p.quantityInStock) AS totalInventoryWarehouse
FROM warehouses  w
        LEFT JOIN products p 
            ON w.warehouseCode = p.warehouseCode
GROUP BY 
    w.warehouseCode, 
    w.warehouseName
order by 
	totalInventoryWarehouse desc