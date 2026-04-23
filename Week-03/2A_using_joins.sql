USE northwind;
-- Create a single query to list the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.
-- Create a single query to list the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
-- Create a single query to list the product id, product name, unit price, category name, and supplier name of every product. Order by product name.
-- Create a single query to list the order id, ship name, ship address, and shipping company name of every order that shipped to Germany. 
-- Assign the shipping company name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it shipped to.
-- Start from the same query as above (#4), but omit OrderID and add logic to group by ship name, with a count of how many orders were shipped for that ship name.
-- Create a single query to list the order id, order date, ship name, ship address of all orders that included Sasquatch Ale.
-- Hint: You will need to join on three tables to accomplish this. 
-- (One of these tables has a sneaky space in the name, so you will need to surround it with backticks, like this: `table name`)

-- 1

SELECT ProductID, ProductName, UnitPrice, CategoryName 
FROM Products
FULL JOIN Categories
ORDER BY CategoryName, ProductName;

-- 2

SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
FULL JOIN Suppliers
WHERE UnitPrice > 75
ORDER BY ProductName; 

-- 3

SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName
FROM Products
FULL JOIN Categories, Suppliers
ORDER BY ProductName;

-- 4

SELECT ShipAddress AS 'Shippers', ShipCountry, CompanyName, OrderID, ShipName
FROM Orders
FULL JOIN Suppliers
WHERE ShipCountry = 'Germany'
ORDER BY ShipName, ShipAddress;

-- 5 

SELECT ShipAddress AS 'Shippers', ShipCountry, CompanyName, COUNT(ShipName) 
FROM Orders
FULL JOIN Suppliers
WHERE ShipCountry = 'Germany'
GROUP BY ShipName;

-- 6

SELECT OrderID, OrderDate, ShipName, ShipAddress
FROM Orders
FULL JOIN Products, Shippers, Suppliers
WHERE ShipName = 'Sasquatch Ale'


-- i am aware that my last two codes aren't correct - I was struggling with the formatting and figuring out the correct code. 
-- If anyone has any suggestions, please let me know!