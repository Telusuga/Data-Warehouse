create or replace table aisle
(
aisle_id integer,
aisle string
)

create or replace table department
(
dept_id integer,
department string
)

create or replace table order_products_info
(
order_id integer,
product_id integer,
number_of_items_in_cart integer,
number_of_items_reordered integer
);


create or replace table orders
(
order_id integer,
user_id integer,
eval_set string,
order_number integer,
order_date_of_week integer,
order_hour integer
);

create or replace table products
(
product_id integer,
product_name string,
aisle_id integer,
dept_id integer
);
