CREATE TABLE geo_dim
(
 geo_id      int NOT NULL,
 country     varchar(50) NOT NULL,
 city        varchar(50) NOT NULL,
 state_      varchar(50) NOT NULL,
 postal_code varchar(50) NOT NULL
);

CREATE TABLE customer_dim
(
 cust_id       int NOT NULL,
 customer_id   varchar(50) NOT NULL,
 customer_name varchar(50) NOT NULL
);

CREATE TABLE product_dim
(
 prod_id      int NOT NULL,
 product_id   varchar(50) NOT NULL,
 product_name varchar(50) NOT NULL,
 category     varchar(50) NOT NULL,
 sub_category varchar(50) NOT NULL,
 segment      varchar(50) NOT NULL
);

CREATE TABLE shipping_dim
(
 ship_id       int NOT NULL,
 shipping_mode varchar(50) NOT NULL
);

CREATE TABLE sales_fact
(
 sales_id      int NOT NULL,
 cust_id       int NOT NULL,
 ship_id_1     int NOT NULL,
 geo_id_1      int NOT NULL,
 cust_id_1     int NOT NULL,
 prod_id_1     int NOT NULL,
 order_date_id date NOT NULL,
 ship_date_id  date NOT NULL,
 prod_id       int NOT NULL,
 ship_id       int NOT NULL,
 geo_id        int NOT NULL,
 order_id      varchar(50) NOT NULL,
 sales         int NOT NULL,
 profit        int NOT NULL,
 quantity      int NOT NULL,
 discount      int NOT NULL
);


