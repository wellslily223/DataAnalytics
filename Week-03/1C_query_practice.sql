USE northwind;

-- Write a query to list the product id, product name, and unit price of every product. This time, display them in ascending order by price.
-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.
-- If two or more have the same price, list those in ascending order by product name.
-- Write a query against the orders table that displays the total number of distinct customers who have placed orders, based on customer ID. 
-- Use an alias to label the count calculation as CustomerCount.
-- Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID, for each country where orders have been shipped. 
-- Again, use an alias to label the count as CustomerCount. Order the list by the CustomerCount, largest to smallest.
-- What are the products that we carry where we have less than 25 units on hand, but 1 or more units of them are on order? 
-- Write a query that orders them by quantity on order (high to low), then by product name.
-- Write a query to list each of the job titles in employees, along with a count of how many employees hold each job title.
-- What employees have a monthly salary that is between $2000 and $2500? Write a query that orders them by job title

-- 1

SELECT ProductId, ProductName, UnitPrice
FROM Products
ORDER BY ProductID, ProductName, UnitPrice

-- 2

SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC, UnitsInStock ASC;

-- 3

SELECT DISTINCT CustomerID AS CustomerCount, ShipCountry
FROM Orders


-- 4

SELECT DISTINCT CustomerID AS CustomerCount, ShipCountry 
FROM Orders
ORDER BY CustomerID DESC;

-- 5

SELECT ProductID, UnitsInStock, UnitsOnOrder, ProductName
FROM PRODUCTS
WHERE UnitsInStock < 25 AND UnitsOnOrder >= 1
ORDER BY UnitsOnOrder DESC, ProductName

-- 6

SELECT Title, COUNT(DISTINCT Title)
FROM Employees
GROUP BY Title;

-- 7

SELECT EmployeeID, FirstName, LastName, Salary, Title
FROM Employees
WHERE Salary BETWEEN 2000 and 2500
ORDER BY Title DESC