CREATE DATABASE Market

USE Market

CREATE TABLE Products (Id INT,Name NVARCHAR(30))



ALTER TABLE Products
ADD Price INT

ALTER TABLE Products
ALTER COLUMN Price DECIMAL

INSERT INTO Products(Id,Name,Price)
VALUES
(1,'Banan',300),
(2,'Alma',500),
(3,'Alca',754),
(4,'Gilas',950),
(5,'Soyteli',99),
(6,'Badimjan',5),
(7,'Ananas',15),
(8,'Bibar',101),
(9,'Greyfurt',333),
(10,'Qarpiz',669)


UPDATE Products
SET Price=4
WHERE Id=4

SELECT * FROM Products
WHERE Price>10



SELECT * FROM Products
WHERE Name LIKE '%A%'




UPDATE Products
SET Price=100
WHERE Price<100

SELECT * FROM Products
WHERE Price BETWEEN 100 AND 500

ALTER TABLE Products
ALTER COLUMN Name NVARCHAR(35) NOT NULL 

ALTER TABLE Products
ADD CONSTRAINT CK_Products_Name CHECK (LEN(Name) > 2);


