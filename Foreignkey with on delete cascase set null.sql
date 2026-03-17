CREATE TABLE CATEGORY
(
Id int primary key,
CategoryName varchar(100) NOT NULL,
Description varchar(255)
)

CREATE TABLE PRODUCT
(
ProductId int Primary key,
ProductName varchar(150) NOT NULL,
Price decimal(10,2) NOT NULL,
StockQunatity int NOT NULL,
CategoryId  int ,
Brand varchar(100),
FOREIGN KEY (CategoryId) References Category(Id)
)


INSERT INTO CATEGORY (Id,CategoryName,description) VALUES
(3,'Stationery','Office and School  stationary items'),
(1,'Electronics','Electronic Gadgets and  accessories'),
(2,'Home Appliances','appliances for Home'),
(
(4,'Furniture','Office and Home Furniture')



INSERT INTO PRODUCT (ProductId, ProductName,Price,StockQunatity,CategoryId,Brand) VALUES
(101,'Samsung Galaxy',15999,25,1,'Samsung'),
(102,'Lenova ideaPad',78999,12,1,'Lenovo'),
(103,'Airpod',25999,10,1,'Apple'),
(104,'Refrigrator',65999,5,2,'Samsung'),
(105,'Preeti Grindery',9999,7,2,'Preeti'),
(106, 'Bajaj Mixer Grinder', 4599.00, 20, 2, 'Bajaj'),

(107, 'Classmate Notebook', 85.00, 100, 3, 'Classmate'),
(108, 'Cello Ball Pen Pack', 120.00, 200, 3, 'Cello'),
(109, 'Apsara Pencil Box', 60.00, 150, 3, 'Apsara')

delete from CATEGORY where id=3

select * from CATEGORY
delete from CATEGORY where id=1


drop table PRODUCT
CREATE TABLE PRODUCT
(
ProductId int Primary key,
ProductName varchar(150) NOT NULL,
Price decimal(10,2) NOT NULL,
StockQunatity int NOT NULL,
CategoryId  int ,
Brand varchar(100),
FOREIGN KEY (CategoryId) References Category(Id) on DELETE CASCADE
)


INSERT INTO PRODUCT (ProductId, ProductName,Price,StockQunatity,CategoryId,Brand) VALUES
(101,'Samsung Galaxy',15999,25,1,'Samsung'),
(102,'Lenova ideaPad',78999,12,1,'Lenovo'),
(103,'Airpod',25999,10,1,'Apple'),
(104,'Refrigrator',65999,5,2,'Samsung'),
(105,'Preeti Grindery',9999,7,2,'Preeti'),
(106, 'Bajaj Mixer Grinder', 4599.00, 20, 2, 'Bajaj'),

(107, 'Classmate Notebook', 85.00, 100, 3, 'Classmate'),
(108, 'Cello Ball Pen Pack', 120.00, 200, 3, 'Cello'),
(109, 'Apsara Pencil Box', 60.00, 150, 3, 'Apsara')
SELECT * from PRODUCT


DELETE FROM CATEGORY WHERE ID=3


drop table PRODUCT
CREATE TABLE PRODUCT
(
ProductId int Primary key,
ProductName varchar(150) NOT NULL,
Price decimal(10,2) NOT NULL,
StockQunatity int NOT NULL,
CategoryId  int ,
Brand varchar(100),
FOREIGN KEY (CategoryId) References Category(Id) on DELETE SET NULL
)


INSERT INTO PRODUCT (ProductId, ProductName,Price,StockQunatity,CategoryId,Brand) VALUES
(101,'Samsung Galaxy',15999,25,1,'Samsung'),
(102,'Lenova ideaPad',78999,12,1,'Lenovo'),
(103,'Airpod',25999,10,1,'Apple'),
(104,'Refrigrator',65999,5,2,'Samsung'),
(105,'Preeti Grindery',9999,7,2,'Preeti'),
(106, 'Bajaj Mixer Grinder', 4599.00, 20, 2, 'Bajaj'),
(107, 'Classmate Notebook', 85.00, 100, 3, 'Classmate'),
(108, 'Cello Ball Pen Pack', 120.00, 200, 3, 'Cello'),
(109, 'Apsara Pencil Box', 60.00, 150, 3, 'Apsara')


DELETE From CATEGORY WHERE Id=3

SELECT * FROM CATEGORY
SELECT * FROM PRODUCT