-- Dataset V3
-- Expanded sample data for advanced SQL practice
-- (SUBQUERIES, CTE, WINDOW FUNCTIONS)

--Customers
insert into customers values
(16,'Julia','Warsaw'),
(17,'Kamil','Krakow'),
(18,'Ola','Gdansk'),
(19,'Bartek','Wroclaw'),
(20,'Monika','Poznan'),
(21,'Daniel','Warsaw');

--Products
insert into products values
(16,'Gaming Laptop','Electronics',7000),
(17,'Smartphone Pro','Electronics',5000),
(18,'Premium Chair','Furniture',1500),
(19,'Standing Desk','Furniture',2200),
(20,'Wireless Mouse Pro','Electronics',300),
(21,'Office Lamp','Furniture',350),
(22,'VR Headset','Electronics',999);

--Orders
insert into orders values
(127,16,'2024-05-15',7300.00),
(128,16,'2024-05-20',5000.00),
(129,17,'2024-05-18',7300.00),
(130,17,'2024-05-25',5000.00),
(131,18,'2024-05-22',7000.00),
(132,18,'2024-05-28',1500.00),
(133,19,'2024-05-23',2200.00),
(134,20,'2024-05-24',12000.00),
(135,1,'2024-06-01',12000.00),
(136,2,'2024-06-02',12000.00),
(137,3,'2024-06-03',12000.00);

--Order items
insert into order_items values
(127,16,1),
(127,20,1),
(128,17,1),
(129,16,1),
(129,17,1),
(130,20,1),
(131,16,1),
(131,17,1),
(132,18,1),
(133,19,1),
(134,16,1),
(134,17,1),
(134,20,1),
(135,16,1),
(135,17,1),
(136,16,1),
(136,20,1),
(137,17,1);