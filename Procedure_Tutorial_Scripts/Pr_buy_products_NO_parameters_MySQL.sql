use techTFQ;

/* CREATING THE TABLES */
select * from products;
select * from sales;

drop table sales;
drop table products;

create table products
(
	product_code			varchar(20) primary key,
	product_name			varchar(100),
	price					float,
	quantity_remaining		int,
	quantity_sold			int
);

create table sales
(
	order_id			int auto_increment primary key,
	order_date			date,
	product_code		varchar(20) references products(product_code),
	quantity_ordered	int,
	sale_price			float
);

insert into products (product_code,product_name,price,quantity_remaining,quantity_sold)
	values ('P1', 'iPhone 13 Pro Max', 1000, 5, 195);

insert into sales (order_date,product_code,quantity_ordered,sale_price)
	values (str_to_date('10-01-2022','%d-%m-%Y'), 'P1', 100, 120000);
insert into sales (order_date,product_code,quantity_ordered,sale_price)
	values (str_to_date('20-01-2022','%d-%m-%Y'), 'P1', 50, 60000);
insert into sales (order_date,product_code,quantity_ordered,sale_price)
	values (str_to_date('05-02-2022','%d-%m-%Y'), 'P1', 45, 540000);


/* CREATING THE PROCEDURE */
drop procedure if exists pr_buy_products;

DELIMITER $$
create procedure pr_buy_products()
begin
	declare v_product_code	varchar(20);
	declare v_price         int;

    select product_code, price
    into v_product_code, v_price
    from products
    where product_name = 'iPhone 13 Pro Max';

    insert into sales (order_date,product_code,quantity_ordered,sale_price)
		values (cast(now() as date), v_product_code, 1, (v_price * 1));

    update products
    set quantity_remaining = (quantity_remaining - 1)
    , quantity_sold = (quantity_sold + 1)
    where product_code = v_product_code;

    select 'Product sold!';
end$$

call 
