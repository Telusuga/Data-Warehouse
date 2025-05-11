📊 Dimensional Data Modeling with Snowflake
This repository outlines the steps to perform dimensional data modeling using Snowflake. The process involves setting up users, managing data stages, and building raw and dimensional tables to support business intelligence needs.

Below image shows Dimensional Data Model for an e-commerce data pulled from kaggle Insta Cart Data
![image](https://github.com/user-attachments/assets/fb1e1734-8fdc-418a-8dc8-743cf118d52b)


✅ Steps Overview
🔐 User Setup
Create a dedicated Snowflake user and assign the necessary roles and permissions to manage objects and perform data operations.

📦 Stage and File Format Creation
Define a Snowflake STAGE to securely connect to your data source (e.g., AWS S3), and configure a FILE FORMAT that matches your raw data structure (CSV, JSON, etc.).

🗄️ Create Raw Tables and Load Data
Design raw tables to mirror the structure of the source files. Use the COPY INTO command to ingest data from the stage into these raw tables.

📐 Create Dimension Tables
Build dimension tables tailored to business requirements by transforming and modeling the raw data. These tables support analytics and reporting use cases.
