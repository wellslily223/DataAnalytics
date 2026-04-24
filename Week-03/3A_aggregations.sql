USE northwind;

-- 1. Write a query to find the price of the cheapest item that Northwind sells. Then write a second query to find the name of the product that has that price.
-- 2. Write a query to find the average price of all items that Northwind sells.
-- (Bonus: Once you have written a working query, try asking Claude or ChatGPT for help using the ROUND function to round the average price to the nearest cent.) 
-- 3. Write a query to find the price of the most expensive item that Northwind sells.
-- Then write a second query to find the name of the product with that price, plus the name of the supplier for that product.
-- 4. Write a query to find total monthly payroll (the sum of all the employees’ monthly salaries).
-- 5. Write a query to identify the highest salary and the lowest salary amounts which any employee makes. (Just the amounts, not the specific employees!)
-- 6. Write a query to find the name and supplier ID of each supplier and the number of items they supply. Hint: Join is your friend here.
-- 7. Write a query to find the list of all category names and the average price for items in each category.
-- 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what is the name of each supplier and the number of items they supply.
-- 9. Write a query to list products currently in inventory by the product id, product name, and inventory value 
-- (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. If two or more have the same value, order by product name. If a product is not in stock, leave it off the list.

-- 1

SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;

SELECT ProductName, UnitPrice
FROM Products
WHERE ProductName = 'Geitost';

-- 2

SELECT AVG(UnitPrice), ProductName
FROM Products
GROUP BY UnitPrice, ProductName;

-- 3

SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

SELECT ProductName, UnitPrice, CompanyName
FROM Products
FULL JOIN Suppliers
WHERE ProductName = 'Cte de Blaye';

-- 4

SELECT FirstName, Lastname, EmployeeID, SUM(Salary)
FROM Employees
GROUP BY EmployeeID, Salary;

-- 5

SELECT MIN(Salary) AS 'Min Value', MAX(Salary) AS 'Max Value'
FROM Employees
GROUP BY Salary;

-- 6

SELECT SupplierID, CompanyName, COUNT(Quantity)
FROM Suppliers
INNER JOIN `Order Details`
GROUP BY SupplierID, Quantity;

-- 7

SELECT CategoryName, AVG(UnitPrice)
FROM Categories
FULL JOIN Products
GROUP BY CategoryName, UnitPrice;

-- 8

SELECT CompanyName, Quantity
FROM Suppliers
FULL JOIN `Order Details`
WHERE Quantity >= 5;

-- 9 

SELECT UnitsInStock * UnitPrice AS 'Inventory Value', ProductID, ProductName
FROM Products
ORDER BY 'Inventory Value' DESC