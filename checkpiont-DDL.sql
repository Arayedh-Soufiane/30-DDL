USE name_of_database;
--1-  You are asked to create the above given relational model using SQL language and based on the different mentioned constraints.
CREATE TABLE Costumer (
    Costumer_id VARCHAR2(20) PRIMARY KEY,
    costumer_Name VARCHAR2(20) NOT NULL,
    costumer_Tel NUMBER
);
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (NUMBER > 0)
);
CREATE TABLE Orders (
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Costumer_id) REFERENCES Costumer(Costumer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
-- 2-  After creating tables, write SQL commands to:
--               Add a column Category (VARCHAR2(20)) to the PRODUCT table. 
--               Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.
ALTER TABLE Product
ADD Category VARCHAR2(20);
-- ///////////////////--
ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;