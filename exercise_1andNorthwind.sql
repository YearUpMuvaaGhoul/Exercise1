use northwind;

# 1. SELECT CategoryName from Categories c;

# 2. SELECT ProductName from Products p ;

# 3. SELECT DISTINCT Country from Customers order by Country DESC;

# 4. SELECT OrderID, OrderDate from Orders order by OrderDate ASC;

# 5. SELECT OrderID, OrderDate from Orders order by OrderDate DESC;

# 6. SELECT COUNT(CustomerID) from Customers; 

# 7. SELECT DISTINCT Country from Suppliers;

# 8. SELECT DISTINCT UnitPrice from `Order Details` order by UnitPrice DESC;

# 9. SELECT DISTINCT UnitPrice from `Order Details` order by UnitPrice ASC;

-- SELECT * from Customers where CompanyName = "The Big Cheese"; = "THEBI"
-- 
-- SELECT * from Orders WHERE CustomerID = "THEBI" order by OrderDate DESC; == 10992
-- 
-- SELECT * from `Order Details` WHERE OrderID = 10992; = "72"
-- 
-- SELECT * from Products p WHERE ProductID = 72;


SELECT 
    o.OrderDate,
    od.UnitPrice, od.Quantity,
    (od.UnitPrice * od.Quantity) AS SalesTotal,
    p.ProductName
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
JOIN 
    `Order Details` od ON o.OrderID = od.OrderID
JOIN 
    Products p ON od.ProductID = p.ProductID
WHERE 
    c.CompanyName = "The Big Cheese"
    AND o.CustomerID = (
        SELECT CustomerID
        FROM Orders
        WHERE CustomerID = c.CustomerID
        ORDER BY OrderDate DESC
        LIMIT 1
    )
    AND od.OrderID = (
        SELECT OrderID
        FROM `Order Details`
        WHERE OrderID = od.OrderID
        LIMIT 1
    )
    AND p.ProductID = (
        SELECT ProductID
        FROM Products
        WHERE ProductID = p.ProductID
        LIMIT 1
    ) order by o.OrderDate DESC;
