use cape_codd;

-- 2.41
SELECT 
    i.SKU,
    i.SKU_Description,
    w.WarehouseID,
    w.WarehouseCity,
    w.WarehouseState
FROM 
    Inventory i
JOIN 
    Warehouse w
    ON i.WarehouseID = w.WarehouseID
WHERE 
    w.WarehouseCity IN ('Atlanta', 'Bangor', 'Chicago');


-- 2.42

SELECT 
    i.SKU,
    i.SKU_Description,
    w.WarehouseID,
    w.WarehouseCity,
    w.WarehouseState
FROM 
    Inventory i
JOIN 
    Warehouse w
    ON i.WarehouseID = w.WarehouseID
WHERE 
    w.WarehouseCity <> 'Atlanta'
    AND w.WarehouseCity <> 'Bangor'
    AND w.WarehouseCity <> 'Chicago';

-- 2.43

SELECT 
    i.SKU,
    i.SKU_Description,
    w.WarehouseID,
    w.WarehouseCity,
    w.WarehouseState
FROM 
    Inventory i
JOIN 
    Warehouse w
        ON i.WarehouseID = w.WarehouseID
WHERE 
    w.WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.44

SELECT CONCAT(SKU_Description, ' is located in ', WarehouseCity) AS ItemLocation
FROM Inventory;

-- 2.45

SELECT 
    SKU,
    SKU_Description,
    WarehouseID
FROM 
    Inventory
WHERE 
    WarehouseID IN (
        SELECT WarehouseID
        FROM Warehouse
        WHERE Manager = 'Lucille Smith'
    );

-- 2.46

SELECT 
    i.SKU,
    i.SKU_Description,
    i.WarehouseID
FROM 
    Inventory i,
    Warehouse w
WHERE 
    i.WarehouseID = w.WarehouseID
    AND w.Manager = 'Lucille Smith';
    
-- 2.47

SELECT 
    i.SKU,
    i.SKU_Description,
    i.WarehouseID
FROM 
    Inventory i
JOIN 
    Warehouse w
    ON i.WarehouseID = w.WarehouseID
WHERE 
    w.Manager = 'Lucille Smith';
    
-- 2.48

SELECT 
    WarehouseID,
    AVG(QuantityOnHand) AS AvgQuantityOnHand
FROM 
    Inventory
WHERE 
    WarehouseID IN (
        SELECT WarehouseID
        FROM Warehouse
        WHERE Manager = 'Lucille Smith'
    )
GROUP BY 
    WarehouseID;

-- 2.49

SELECT 
    i.WarehouseID,
    AVG(i.QuantityOnHand) AS AvgQuantityOnHand
FROM 
    Inventory i,
    Warehouse w
WHERE 
    i.WarehouseID = w.WarehouseID
    AND w.Manager = 'Lucille Smith'
GROUP BY 
    i.WarehouseID;
    
-- 2.50

SELECT 
    i.WarehouseID,
    AVG(i.QuantityOnHand) AS AvgQuantityOnHand
FROM 
    Inventory i
JOIN 
    Warehouse w
    ON i.WarehouseID = w.WarehouseID
WHERE 
    w.Manager = 'Lucille Smith'
GROUP BY 
    i.WarehouseID;
    

   



