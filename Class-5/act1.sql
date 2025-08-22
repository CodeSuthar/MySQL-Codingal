CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_id TEXT PRIMARY KEY,
    Name TEXT NOT NULL,
    City TEXT NOT NULL,
    Commission_rate REAL NOT NULL
)

INSERT INTO Salesman (Salesman_id, Name, City, Commission_rate) VALUES
mission) VALUES
  ('5001', 'James Hoog', 'New York', 0.15),
  ('5002', 'Nail Knite', 'Paris', 0.13),
  ('5005', 'Pit Alex', 'London', 0.11),
  ('5006', 'Mc Lyon', 'Paris', 0.14),
  ('5007', 'Paul Adam', 'Rome', 0.13),
  ('5003', 'Lauson Hen', 'San Jose', 0.12);

CREATE TABLE IF NOT EXISTS Customer (
    Customer_id TEXT PRIMARY KEY,
    Cust_Name TEXT NOT NULL,
    City TEXT NOT NULL,
    Grade INTEGER NOT NULL
    Salesman_id TEXT NOT NULL,
    FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
):

INSERT INTO Customer (Customer_id, Cust_Name, City, Grade, Salesman_id) VALUES
  ('3002', 'Nick Rimando', 'New York', NULL, '5001'),
  ('3007', 'Brad Davis', 'New York', NULL, '5001'),
  ('3005', 'Graham Zusi', 'California', 200, '5002'),
  ('3008', 'Julian Green', 'London', 300, '5002'),
  ('3004', 'Fabian Johnson', 'Paris', 300, '5006'),
  ('3009', 'Geoff Cameron', 'Berlin', 100, '5003'),
  ('3003', 'Jozy Altidore', 'Moscow', NULL, '5007'),
  ('3001', 'Brad Guzan', 'London', NULL, '5005');

CREATE TABLE IF NOT EXISTS Orders (
    Ord_no TEXT PRIMARY KEY,
    Purch_amt REAL NOT NULL,
    Ord_date TEXT NOT NULL,
    Customer_id TEXT NOT NULL,
    Salesman_id TEXT NOT NULL,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);

INSERT INTO Orders (Ord_no, Purch_amt, Ord_date, Customer_id, Salesman_id) VALUES
  ('70001', 150.5, '2012-10-05', '3002', '5001'),
  ('70009', 270.65, '2012-09-10', '3007', '5001'),
  ('70002', 65.26, '2012-10-05', '3005', '5002'),
  ('70004', 110.5, '2012-08-17', '3008', '5002'),
  ('70007', 948.5, '2012-09-10', '3004', '5006'),
  ('70005', 2400.6, '2012-07-27', '3009', '5003'),
  ('70008', 5760, '2012-06-30', '3003', '5007'),
  ('70003', 1983.43, '2012-10-25', '3001', '5005');

SELECT Customer.Cust_Name, Salesman.Name, Salesman.City FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id;

SELECT Customer.Cust_Name, Salesman.Name FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id;

SELECT Orders.Ord_no, Customer.Cust_Name, Customer.Customer_id, Orders.Salesman_id FROM Orders
JOIN Customer ON Orders.Customer_id = Customer.Customer_id
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
WHERE Customer.City <> Salesman.City;

SELECT Orders.Ord_no, Customer.Cust_Name, Customer.Customer_id, Orders.Salesman_id FROM Orders
JOIN Customer ON Orders.Customer_id = Customer.Customer_id;

SELECT Customer.cust_name AS "Customer", Customer.grade AS "Grade"
FROM Orders
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
JOIN Customer ON Orders.customer_id = Customer.customer_id
WHERE Customer.grade IS NOT NULL;

SELECT Customer.cust_name AS "Customer", Customer.City AS "City", Salesman.Name AS "Salesman", Salesman.Commission_rate AS "Commission Rate" FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id WHERE Salesman.Commission_rate BETWEEN 0.12 AND 0.15;

SELECT Orders.ord_no, Customer.cust_name, Salesman.Comission AS "Commission%",
Orders.purch_amt * Salesman.Comission AS "Commission"
FROM Orders
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
JOIN Customer ON Orders.customer_id = Customer.customer_id
WHERE Customer.grade >= 200;

SELECT *
FROM Customer
JOIN Orders ON Customer.customer_id = Orders.customer_id
WHERE Orders.ord_date = '2012-10-05';