--this table is created with chat gpt for trening 
drop table if exists orders;

create table orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    amount decimal(10,2)
);

insert into orders values
(101, 1, '2024-01-10', 120.50),
(102, 1, '2024-02-15', 80.00),
(103, 2, '2024-01-20', 250.00),
(104, 3, '2024-03-05', 75.00),
(105, 3, '2024-03-10', 200.00),
(106, 4, '2024-04-01', 300.00);