use northwind;

-- 1. products

-- 2. SELECT ProductID, ProductName, UnitPrice
-- FROM products;productsproducts

-- 3. SELECT ProductID, ProductName, UnitPrice
-- FROM products
-- ORDER BY UnitPrice;

-- 4. SELECT *
-- FROM products
-- WHERE UnitPrice <= 7.50;

-- 5. SELECT ProductID, ProductName, UnitPrice, UnitsInStock
-- FROM products
-- WHERE UnitsInStock >= 100
-- ORDER BY UnitPrice;

-- 6. SELECT ProductID, ProductName, UnitPrice, UnitsInStock
-- FROM products
-- WHERE UnitsInStock >= 100
-- ORDER BY UnitPrice desc, ProductName;

-- 7. SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
-- FROM products
-- WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
-- ORDER BY ProductName;

-- 8. Categories

-- 9. SELECT *
-- FROM categories;
-- WHERE categoryname = "Seafood" ;
-- The seafood ID is 8

-- 10. SELECT *
-- FROM products
-- WHERE CategoryID = "8";

-- 11. SELECT 
-- EmployeeID, FirstName, LastName,
-- concat(FirstName, " ", lastName) AS FullName
-- FROM employees;

-- 12. SELECT *
-- FROM employees
-- WHERE title LIKE "%Manager%";

-- 13. SELECT distinct Title
-- FROM employees;

-- 14. SELECT EmployeeID, FirstName, LastName, Salary
-- FROM employees
-- WHERE salary BETWEEN 2000 AND 2500;

-- 15. SELECT *
-- FROM suppliers;

-- 16. SELECT SupplierID, CompanyName
-- FROM suppliers
-- WHERE CompanyName = "Tokyo Traders";

-- SELECT *
-- FROM products
-- WHERE SupplierID = "4";

-- SELECT *
-- FROM products
-- WHERE SupplierID = (
--     SELECT SupplierID
--     FROM suppliers
--     WHERE CompanyName = 'Tokyo Traders'
-- );

-- FOR COMMENTS 
-- Windows/Linux: Highlight the lines and press Ctrl + /.
-- Mac: Highlight the lines and press Command + /.










