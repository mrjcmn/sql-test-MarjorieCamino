-- Insert a new user.
INSERT INTO Users (FirstName, LastName, Email, PhoneNumber, Address)
VALUES ('Alice', 'Green', 'alice.green@example.com', '555-9999', '789 Bird St, Birdtown');

-- Update a product's price.
UPDATE Products
SET Price = 12.99
WHERE ProductID = 1;

-- Delete an old order.
DELETE FROM OrderDetails WHERE OrderID = 3;
DELETE FROM Orders WHERE OrderID = 1;

-- Find the total sales by product category for a specific month.
SELECT p.Category, SUM(od.SubTotal) AS TotalSales
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE MONTH(o.OrderDate) = 12  -- December
GROUP BY p.Category;

-- List users who have never placed an order.
SELECT u.UserID, u.FirstName, u.LastName
FROM Users u
LEFT JOIN Orders o ON u.UserID = o.UserID
WHERE o.OrderID IS NULL;

-- Display the top 5 products by average review rating.
SELECT TOP 5 p.ProductID, p.ProductName, AVG(r.Rating) AS AvgRating
FROM Products p
JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY AvgRating DESC;

-- Show the number of orders per day for the last 30 days.
SELECT CAST(OrderDate AS DATE) AS OrderDate, COUNT(OrderID) AS OrdersPerDay
FROM Orders
WHERE OrderDate >= DATEADD(DAY, -30, GETDATE())
GROUP BY CAST(OrderDate AS DATE)
ORDER BY OrderDate DESC;

-- **Join Operations:**
SELECT u.FirstName, u.LastName, o.OrderID, o.OrderDate, p.ProductName, od.Quantity, od.SubTotal
FROM Orders o
JOIN Users u ON o.UserID = u.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE u.UserID = 1;  -- Replace with a specific UserID
