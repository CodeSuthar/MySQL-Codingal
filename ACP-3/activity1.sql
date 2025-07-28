DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales(
    SaleID INT PRIMARY KEY,
    SalesPerson VARCHAR(100),
    SaleAmount DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO Sales(SaleID, SalesPerson, SaleAmount, SaleDate) VALUES
(1, 'Amit Sharma', 500.00, '2025-07-01'),
(2, 'Nina Desai', 750.00, '2025-07-02'),
(3, 'Amit Sharma', 200.00, '2025-07-02'),
(4, 'Ravi Kumar', 1200.00, '2025-07-03'),
(5, 'Nina Desai', 300.00, '2025-07-04');

SELECT SUM(SaleAmount) AS Total_Sales FROM Sales;

SELECT AVG(SaleAmount) AS Average_Sale FROM Sales;

SELECT COUNT(*) AS Total_Sales_Count FROM Sales;

SELECT MAX(SaleAmount) AS Highest_Sale FROM Sales;

SELECT MIN(SaleAmount) AS Lowest_Sale FROM Sales;

SELECT SalesPerson, SUM(SaleAmount) AS Total_By_Person
FROM Sales
GROUP BY SalesPerson;