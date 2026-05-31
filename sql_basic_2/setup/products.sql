--tgis tabel is created with chat gpt for trening
drop table if exists products;

create table products (
    product_id int primary key,
    product_name text,
    category text,
    price decimal(10,2)
);

insert into products values
(1, 'Laptop', 'Electronics', 4000),
(2, 'Mouse', 'Electronics', 100),
(3, 'Desk', 'Furniture', 800),
(4, 'Chair', 'Furniture', 500);