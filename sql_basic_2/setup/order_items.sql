--this tabel is created with chat gpt for trening
drop table if exists order_items;

create table order_items (
    order_id int,
    product_id int,
    quantity int
);

insert into order_items values
(101, 1, 1),
(101, 2, 2),
(102, 2, 1),
(103, 3, 1),
(104, 4, 2),
(105, 1, 1),
(105, 2, 3),
(106, 3, 1);