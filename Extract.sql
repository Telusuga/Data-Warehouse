---- These load statements are mainly to load data into the respective tables using STAGE and FILE FORMATS

copy into aisle(aisle_id,aisle)
from @aws_snowflake_conn/aisles.csv
FILE_FORMAT=(FORMAT_NAME='CSV_FILE_FORMAT')





copy into department(dept_id,department)
from @aws_snowflake_conn/departments.csv
FILE_FORMAT=(FORMAT_NAME='CSV_FILE_FORMAT')



copy into orders(order_id,user_id,eval_set,order_number,order_date_of_week,order_hour)
from @aws_snowflake_conn/orders.csv
FILE_FORMAT=(FORMAT_NAME='CSV_FILE_FORMAT')




copy into order_products_info(order_id,product_id,number_of_items_in_cart,number_of_items_reordered)
from @aws_snowflake_conn/order_products__train.csv
FILE_FORMAT=(FORMAT_NAME='CSV_FILE_FORMAT')



copy into products(product_id,product_name,aisle_id,dept_id)
from @aws_snowflake_conn/products.csv
FILE_FORMAT=(FORMAT_NAME='CSV_FILE_FORMAT')



