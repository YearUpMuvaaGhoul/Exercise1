-- 1.
select ProductName, UnitPrice
from products
where UnitPrice = (
	select MAX(UnitPrice) 
	FROM products);
    
-- 2.
SELECT OrderID, ShipName, ShipAddress, ShipVia
FROM orders
WHERE Shipvia IN (
	SELECT ShipperID
	FROM shippers
	WHERE CompanyName = "Federal Shipping");

-- 3.
SELECT OrderID, ProductID
FROM `order details`
WHERE ProductID IN (
	SELECT ProductID
    FROM products
	WHERE ProductName = "Sasquatch Ale");
    
-- 4.
SELECT concat(FirstName, " ", LastName) as FullName
FROM employees
WHERE EmployeeID = (
	select EmployeeID
	from orders
	where orderId = (
		select OrderID
		from `order details`
		WHERE OrderID = 10266));

-- 5.
select CompanyName
from customers
where customerID = (
	select CustomerID
	from orders
	where orderId = (
		select OrderID
		from `order details`
		WHERE OrderID = 10266));
        
    



    