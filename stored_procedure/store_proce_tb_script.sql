CREATE TABLE products (
   product_code varchar(20) not null,
   product_name varchar(100) ,
   price double precision,
   quantity_remaining integer,
   quantity_sold integer
);

ALTER TABLE products ADD CONSTRAINT products_pk PRIMARY KEY (product_code);

ALTER TABLE table_name
	ADD COLUMN id SERIAL PRIMARY KEY;
   
select * from products;

select * from sales;

CREATE TABLE sales (
   order_id SERIAL primary key ,
   order_date DATE NOT NULL DEFAULT CURRENT_DATE,
   product_code varchar(20),
   quantity_ordered integer,
   sale_price double precision,
   CONSTRAINT fk_product_code FOREIGN key (product_code) REFERENCES products(product_code)
);

CREATE TABLE books (
  id              SERIAL PRIMARY KEY,
  title           VARCHAR(100) NOT NULL,
  primary_author  VARCHAR(100) NULL
);

ALTER TABLE sales
	ADD CONSTRAINT order_id SERIAL primary key;


INSERT INTO products(product_code,product_name,price,quantity_remaining,quantity_sold)
   VALUES('P2', 'Woodland Shoes',1479,12,2222), ('P3','boAT rockers head 255+' ,999,4,1718);	   
	   
INSERT INTO sales(order_id, order_date, product_code, quantity_ordered,sale_price)
values (3,'2020-02-05','P1',1,900), (4,'2019-09-11','P3',2,7673);