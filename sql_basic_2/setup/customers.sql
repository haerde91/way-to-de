--this tabel is created with chat gpt for trening 
drop table if exists customers;

create table customers (
    customer_id int primary key,
    customer_name text,
    city text
);

insert into customers values
(1, 'Anna', 'Warsaw'),
(2, 'Jan', 'Krakow'),
(3, 'Piotr', 'Gdansk'),
(4, 'Maria', 'Wroclaw'),
(5, 'Tomasz', 'Poznan');
