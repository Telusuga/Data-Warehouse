--- The below 5 dim tables are the dimensional tables and the Schema used is Star Schema
create table dim_aisle as
(
select
aisle_id,
aisle
from
AWS_INSTACART.RAW_LANDING_CART_INFO.AISLE
)

create or replace table dim_product
as
(
select 
product_id,
product_name 
from 
AWS_INSTACART.RAW_LANDING_CART_INFO.PRODUCTS
)


create or replace table dim_dept
as
(
select 
dept_id,
department as dept_name
from
AWS_INSTACART.RAW_LANDING_CART_INFO.DEPARTMENT
)


create or replace table dim_orders
as
(
select 
order_id,
eval_set,
order_number,
ORDER_DATE_OF_WEEK as order_week_number,
ORDER_HOUR as ordered_hour
from
AWS_INSTACART.RAW_LANDING_CART_INFO.ORDERS
)



create or replace table dim_users
as
(
select 
user_id 
from 
AWS_INSTACART.RAW_LANDING_CART_INFO.ORDERS
)


--- This is the fact table consists of all the ID fields from dimensional tables and it contains 2 measurment / numerical column
create or replace table fact_product_orders
as
(
select
o.order_id,
o.user_id,
p.product_id,
p.aisle_id,
p.dept_id,
op.number_of_items_in_cart,
op.number_of_items_reordered
from
AWS_INSTACART.RAW_LANDING_CART_INFO.ORDER_PRODUCTS_INFO op
inner join
AWS_INSTACART.RAW_LANDING_CART_INFO.ORDERS o
on op.order_id=o.order_id
inner join AWS_INSTACART.RAW_LANDING_CART_INFO.PRODUCTS p
on op.product_id=p.product_id
)
