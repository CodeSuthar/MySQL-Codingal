CREATE TABLE IF NOT EXISTS Customers (
    CustomerID TEXT PRIMARY KEY,
    CustomerName TEXT NOT NULL,
    CustomerCity TEXT NOT NULL,
    CustomerGrade INT NOT NULL
);

INSERT INTO Customers (CustomerID, CustomerName, CustomerCity, CustomerGrade) VALUES
(1, 'Alice Johnson', 'New York', 120),
(2, 'Bob Smith', 'Los Angeles', 95),
(3, 'Catherine Zeta', 'New York', 90),
(4, 'David Lee', 'Chicago', 105),
(5, 'Emily Watson', 'New York', 110);

SELECT * FROM Customers WHERE CustomerCity = 'New York' OR CustomerGrade > 100;

SELECT * FROM Customers WHERE CustomerCity = 'Los Angeles' AND CustomerGrade < 100;