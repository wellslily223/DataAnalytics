USE northwind;
-- Write a query to list the product id, product name, and unit price of every product that Northwind sells. 
-- (Hint: To help set up your query, look at the schema preview to see what column names belong to each table. Or use SELECT * to query all columns first, then refine your query to just the columns you want.)
-- Write a query to identify the products where the unit price is $7.50 or less.
-- What are the products that we carry where we have no units on hand, but 1 or more units are on backorder? Write a query that answers this question.
-- Examine the products table. How does it identify the type (category) of each item sold? Where can you find a list of all categories? 
-- Write a set of queries to answer these questions, ending with a query that creates a list of all the seafood items we carry.
-- Examine the products table again. Where can you find info on suppliers?
-- Examine the products table again. How do you know what supplier each product comes from? 
-- Where can you find info on suppliers? Write a set of queries to find the specific identifier for "Tokyo Traders" and then find all products from that supplier.
-- How many employees work at northwind? 
-- What employees have "manager" somewhere in their job title? Write queries to answer each question.

-- 1

SELECT ProductID, ProductName, UnitPrice
FROM Products

-- 2

SELECT ProductID, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50

-- 3

SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder != 0

-- 4

SELECT CategoryID, ProductName
FROM Products

SELECT * 
FROM Categories

SELECT CategoryName, CategoryID
FROM Categories
WHERE CategoryName = 'Seafood'

SELECT CategoryID, ProductID
FROM Products
WHERE CategoryID = 8;

# You can find a list of all categories in the 'Categories' table.

-- 5

SELECT SupplierID
FROM Products

-- 6

SELECT CompanyName, SupplierID
FROM Suppliers 

SELECT SupplierID
FROM Products

-- 7

SELECT CompanyName, SupplierID
FROM Suppliers
WHERE CompanyName = 'Tokyo Traders';

SELECT SupplierID
FROM Products
WHERE SupplierID = 4

-- 8

SELECT *
FROM Employees

-- 9

SELECT EmployeeID, Title
FROM Employees
WHERE Title LIKE '%Manager%'