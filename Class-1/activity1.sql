CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_Id Integer PRIMARY KEY,
    name TEXT,
    city TEXT,
    commission REAL    
);

CREATE TABLE IF NOT EXISTS Orders (
    Order_Id TEXT PRIMARY KEY,
    Purchase_Amount REAL,
    Purchase_Date DATE,
    Customer_Id TEXT,
    Salesman_Id INTEGER,
    FOREIGN KEY (Salesman_Id) REFERENCES Salesman(Salesman_Id)
);

INSERT INTO Salesman VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

INSERT INTO Orders VALUES
('70001', 150.5, '2012-10-05', '3005', 5002),
('70009', 270.65, '2012-09-10', '3001', 5001),
('70002', 65.26, '2012-10-05', '3002', 5003),
('70004', 110.5, '2012-08-17', '3009', 5007),
('70007', 948.5, '2012-09-10', '3005', 5005),
('70005', 2400.6, '2012-07-27', '3007', 5006);

SELECT * FROM Salesman;

SELECT * FROM Orders;

SELECT * From Orders WHERE Salesman_Id IN (SELECT Salesman_Id FROM Salesman WHERE city = 'London');