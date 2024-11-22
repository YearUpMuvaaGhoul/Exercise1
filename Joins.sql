use northwind;

-- 1.
select 
products.ProductID, products.ProductName, products.UnitPrice,
categories.CategoryName
from products
join categories on categories.CategoryID = products.CategoryID
ORDER BY categories.CategoryName, products.ProductName;

-- 2. 
select
products.ProductID, products.ProductName, products.UnitPrice, 
suppliers.CompanyName
from products
join suppliers on suppliers.SupplierID = products.SupplierID
WHERE products.UnitPrice > "75"
order by products.ProductName;

-- 3.
select
products.ProductID, products.ProductName, products.UnitPrice,
categories.CategoryName,
suppliers.CompanyName
from products
join categories on categories.CategoryID = products.CategoryID
join suppliers on suppliers.SupplierID = products.SupplierID
order by ProductName;

-- 4.
select products.ProductName, products.UnitPrice,
categories.CategoryName
from products
join categories on categories.CategoryID = products.CategoryID
where products.UnitPrice = (
	select max(products.UnitPrice)
    from products);
    
-- 5.
select
orders.OrderID, orders.ShipName, orders.ShipAddress,
shippers.CompanyName, orders.ShipCountry
from orders
join shippers on shippers.ShipperID = orders.ShipVia
where orders.ShipCountry = "Germany";

-- 6.
select
orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress,
products.ProductName
from products
join `order details` on `order details`.ProductID = products.ProductID
join orders on orders.OrderID = `order details`.OrderID
where products.ProductName = "Sasquatch ale";