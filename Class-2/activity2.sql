CREATE TABLE IF NOT EXISTS PRODUCTS (
  Product_Id TEXT PRIMARY KEY,
  Product_Name TEXT,
  Product_Price TEXT,
  Product_Quantity TEXT
);

INSERT INTO PRODUCTS (Product_Id, Product_Name, Product_Price, Product_Quantity) VALUES
("101","MOTHER BOARD","3200","15"),
("102","KEY BOARD","450","16"),
("103","ZIP DRIVE","250","14"),
("104","SPEAKER","550","16"),
("105","MONITOR","5000","11"),
("106","DVD DRIVE","900","12"),
("107","CD DRIVE","800","12"),
("108","PRINTER","2600","13"),
("109","REFILL CARTRIDGE","350","13"),
("110","MOUSE","250","12");

SELECT Product_Name, Product_Price FROM PRODUCTS WHERE Product_Price = (SELECT MIN(Product_Price) FROM PRODUCTS);

SELECT Product_Name, Product_Price FROM PRODUCTS WHERE Product_Price = (SELECT MAX(Product_Price) FROM PRODUCTS);