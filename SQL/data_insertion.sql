-- Insert sample Users
INSERT INTO Users (FirstName, LastName, Email, PhoneNumber, Address)
VALUES ('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Dog St, Dogtown'),
       ('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Cat Rd, Cattown');

-- Insert sample Products
INSERT INTO Products (ProductName, Category, Price, StockQuantity, Description)
VALUES ('Dog Toy', 'Toy', 10.99, 100, 'A fun squeaky dog toy for hours of entertainment'),
       ('Dog Treats', 'Treat', 5.49, 50, 'Tasty treats for your furry friend'),
       ('Dog Food', 'Food', 20.00, 200, 'High quality food for dogs of all sizes');

-- Insert sample Orders
INSERT INTO Orders (UserID, TotalAmount, ShippingAddress, PaymentStatus)
VALUES (1, 21.98, '123 Dog St, Dogtown', 'Completed'),
       (2, 5.49, '456 Cat Rd, Cattown', 'Pending');

-- Insert OrderDetails (Many-to-Many Relationship between Orders and Products)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal)
VALUES (1, 1, 2, 21.98),
       (2, 2, 1, 5.49);

-- Insert sample Reviews
INSERT INTO Reviews (ProductID, UserID, Rating, ReviewText)
VALUES (1, 1, 5, 'My dog loves this toy! It squeaks and keeps her entertained for hours'),
       (2, 1, 4, 'The treats are good, but I wish they were a little larger');
