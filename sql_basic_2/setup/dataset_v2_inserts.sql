-- Dataset V2
-- Expanded sample data for advanced SQL practice
-- (SELF JOIN, SUBQUERIES, CTE, WINDOW FUNCTIONS)

--Customers
insert into customers values
(6,'Kasia','Warsaw'),
(7,'Marek','Krakow'),
(8,'Ewa','Gdansk'),
(9,'Adam','Warsaw'),
(10,'Natalia','Poznan'),
(11,'Pawel','Wroclaw'),
(12,'Karolina','Krakow'),
(13,'Michal','Warsaw'),
(14,'Agnieszka','Gdansk'),
(15,'Robert','Poznan');

--Products
insert into products values
(5,'Monitor','Electronics',1200),
(6,'Keyboard','Electronics',250),
(7,'Headphones','Electronics',450),
(8,'Bookshelf','Furniture',900),
(9,'Lamp','Furniture',200),
(10,'Tablet','Electronics',1800),
(11,'Phone','Electronics',3500),
(12,'Sofa','Furniture',2500),
(13,'Coffee Table','Furniture',700),
(14,'Printer','Electronics',600),
(15,'Webcam','Electronics',300);

--Orders
insert into orders values
(107,5,'2024-04-05',150.00),
(108,6,'2024-04-07',220.00),
(109,7,'2024-04-08',450.00),
(110,8,'2024-04-10',120.00),
(111,9,'2024-04-12',3800.00),
(112,10,'2024-04-15',900.00),
(113,11,'2024-04-16',4500.00),
(114,12,'2024-04-18',700.00),
(115,13,'2024-04-20',3200.00),
(116,14,'2024-04-22',500.00),
(117,15,'2024-04-23',1800.00),
(118,1,'2024-04-25',600.00),
(119,2,'2024-04-27',1400.00),
(120,3,'2024-04-29',300.00),
(121,4,'2024-05-01',2500.00),
(122,5,'2024-05-03',800.00),
(123,6,'2024-05-05',1200.00),
(124,7,'2024-05-06',2000.00),
(125,8,'2024-05-08',400.00),
(126,9,'2024-05-10',700.00);

--Order items
insert into order_items values
(107,2,1),
(107,6,1),
(108,3,1),
(109,5,1),
(110,9,2),
(111,11,1),
(111,15,1),
(112,8,1),
(113,1,1),
(113,5,1),
(114,13,1),
(115,11,1),
(116,14,1),
(117,10,1),
(118,6,2),
(118,15,1),
(119,5,1),
(120,9,1),
(121,12,1),
(122,13,1),
(122,9,1),
(123,5,1),
(123,6,1),
(124,10,1),
(124,7,1),
(125,14,1),
(126,8,1),
(126,9,1);
