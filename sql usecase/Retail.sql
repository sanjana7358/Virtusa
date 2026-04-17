Create Database Retail_DB;
use Retail_DB;
-- Categories Table
Create Table Categories (
    category_id Int Primary Key,
    category_name Varchar(50)
);
-- Products Table
Create Table Products (
    product_id Int Primary Key,
    product_name Varchar(50),
    category_id Int,
    expiry_date Date,
    stock_count Int,
    price Decimal(10,2),
    Foreign Key (category_id) References Categories(category_id)
);
-- Sales Transaction Table
Create Table SalesTransactions (
    transaction_id Int Primary Key,
    product_id Int,
    quantity Int,
    sale_date Date,
    Foreign Key (product_id) References Products(product_id)
);
-- Inserting Categories
Insert Into Categories Values
(1,'Fruits'),
(2,'Dairy'),
(3,'Snacks'),
(4,'Beverages'),
(5,'Bakery');
-- Inserting Product Values
Insert Into Products Values
(101,'Apple',1,'2026-04-08',60,50),
(102,'Banana',1,'2026-04-07',80,30),
(103,'Orange',1,'2026-04-15',40,60),
(104,'Milk',2,'2026-04-06',90,25),
(105,'Cheese',2,'2026-05-20',30,120),
(106,'Butter',2,'2026-04-10',70,80),
(107,'Curd',2,'2026-04-09',55,40),
(108,'Chips',3,'2026-06-01',100,20),
(109,'Biscuits',3,'2026-05-15',120,15),
(110,'Chocolate',3,'2026-07-01',75,50),
(111,'Juice',4,'2026-05-10',65,45),
(112,'Soda',4,'2026-06-20',85,35),
(113,'Water Bottle',4,'2027-01-01',150,20),
(114,'Coffee',4,'2026-08-01',40,200),
(115,'Tea',4,'2026-07-15',60,150),
(116,'Bread',5,'2026-04-05',90,30),
(117,'Cake',5,'2026-04-06',70,200),
(118,'Cookies',5,'2026-05-01',110,25),
(119,'Muffin',5,'2026-04-07',65,50),
(120,'Croissant',5,'2026-04-08',55,70),
(121,'Pineapple',1,'2026-04-12',45,80),
(122,'Yogurt',2,'2026-04-11',35,60),
(123,'Nachos',3,'2026-06-15',90,30),
(124,'Energy Drink',4,'2026-05-25',75,90),
(125,'Donut',5,'2026-04-09',85,40);
-- Inserting SalesTransaction 
Insert Into SalesTransactions Values
(1,101,5,'2026-04-01'),
(2,102,10,'2026-04-02'),
(3,104,8,'2026-04-03'),
(4,108,6,'2026-03-20'),
(5,109,12,'2026-03-15'),
(6,110,4,'2026-02-10'),
(7,111,7,'2026-04-04'),
(8,112,9,'2026-04-02'),
(9,113,20,'2026-03-25'),
(10,114,3,'2026-02-28'),
(11,115,6,'2026-04-01'),
(12,116,10,'2026-04-05'),
(13,117,2,'2026-04-05'),
(14,118,8,'2026-03-30'),
(15,119,5,'2026-04-03'),
(16,120,4,'2026-04-02'),
(17,121,3,'2026-03-28'),
(18,122,6,'2026-04-01'),
(19,123,7,'2026-02-15'),
(20,124,5,'2026-04-04'),
(21,125,9,'2026-04-03'),
(22,101,4,'2026-03-29'),
(23,102,6,'2026-03-28'),
(24,104,5,'2026-04-02'),
(25,108,10,'2026-03-18');
-- Soon Expiring Products
Select product_name, expiry_date, stock_count
From Products
Where expiry_date <= Curdate() + Interval 7 Day
And stock_count > 50;
-- Dead Stock
Select p.product_name,p.product_id
From Products p
Left Join SalesTransactions s
On p.product_id = s.product_id
And s.sale_date >= Curdate() - Interval 60 Day
Where s.product_id Is Null;
-- Category Revenue per month
Select c.category_name, 
Sum(p.price * s.quantity) As total_revenue
From SalesTransactions s
Join Products p On s.product_id = p.product_id
Join Categories c On p.category_id = c.category_id
Where Month(s.sale_date) = Month(Curdate()) - 1
Group By c.category_name
Order By total_revenue Desc;