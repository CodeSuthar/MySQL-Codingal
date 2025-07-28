CREATE TABLE IF NOT EXISTS PRODUCTS (
    PRODUCT_ID TEXT,
    PRODUCT_NAME TEXT,
    SUPPLIER_ID TEXT,
    CATEGORY_ID TEXT,
    QUANTITY_PER_UNIT TEXT,
    UNIT_PRICE REAL
);

INSERT INTO PRODUCTS (PRODUCT_ID, PRODUCT_NAME, SUPPLIER_ID, CATEGORY_ID, QUANTITY_PER_UNIT, UNIT_PRICE) VALUES
('P001', 'Apple Juice', 'S001', 'Beverages', '1L', 40),
('P002', 'Banana Chips', 'S002', 'Snacks', '150g', 35),
('P003', 'Healthy Protein Bar', 'S003', 'Snacks', '50g', 2.50),
('P004', 'Oregano Pizza', 'S004', 'Frozen Foods', '500g', 59.99),
('P005', 'Organic Almond Milk', 'S005', 'Beverages', '1L', 50),
('P006', 'Whole Wheat Bread', 'S006', 'Bakery', '400g', 25.45),
('P007', 'Greek Yogurt', 'S007', 'Dairy Products', '200g', 30.40),
('P008', 'Coconut Water', 'S008', 'Beverages', '330ml', 20.10),
('P009', 'Dark Chocolate Bar', 'S009', 'Snacks', '100g', 45.5),
('P010', 'Quinoa Salad Mix', 'S010', 'Salads & Dressings', '250g', 60.80);

SELECT COUNT(PRODUCT_ID) AS Product_Count FROM PRODUCTS;

SELECT AVG(UNIT_PRICE) AS Average_Price FROM PRODUCTS;

SELECT SUM(UNIT_PRICE) AS Total_Price FROM PRODUCTS;