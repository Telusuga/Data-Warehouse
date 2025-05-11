--- Before proceeding to do any dimensional modelling. First we need to have a connectivity between AWS and Snowflake
--- The connectivity can be done by creating a stage
--- For the stage from Snowflake to connect, In AWS the particular users should have permissions
--- Mostly for the testing I had used admin kind of permissions
create or replace STAGE aws_snowflake_conn
URL='s3://snowflake-aws-dw/instacart_basket/'
CREDENTIALS=(AWS_KEY_ID='xxxxxxxxxxxxxxx', AWS_SECRET_KEY='xxxxxxxxxxxxxxxxxxxxxxxxxxx');

--- After creating a stage we need a File Format in which the data is read

create or replace FILE FORMAT csv_file_format
TYPE = 'CSV'
FIELD_DELIMITER=','
SKIP_HEADER=1
FIELD_OPTIONALLY_ENCLOSED_BY='"'
EMPTY_FIELD_AS_NULL=TRUE;



