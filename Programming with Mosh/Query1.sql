-- select * from customers;

-- select 
--    last_name, 
--    first_name, 
--    points , 
--    (points + 10) + 100 AS 'discount_factor'
-- from customers;

-- select distinct state
-- from customers;

-- select name,
--   unit_price,
--   (unit_price * 1.1) AS new_price
-- from products;

-- select * 
-- from customers
-- -- where points  < 3000;
-- -- where state != 'VA';
-- where birth_date > '1990-01-01' OR 
--       (points > 1000 AND state = 'VA');

-- select * from orders
-- where order_date >= '2019-01-01';

-- select * from order_items
-- where order_id = 6 AND unit_price * quantity > 30;

-- select * from customers 
-- -- where state IN ('VA', 'FL' , 'GA');
-- where state NOT IN ('VA', 'FL' , 'GA');

-- select * from products 
-- -- Where quantity_in_stock = 49 OR quantity_in_stock = 38 OR quantity_in_stock = 72;
-- Where quantity_in_stock IN (49,38,72);

-- select * from customers 
-- -- Where points >= 1000 AND points <= 3000;
-- Where points between 1000 AND 3000;

-- select * from customers 
-- Where birth_date between '1990-01-01' AND '2000-01-01';

SELECT 
    *
FROM
    customers
WHERE
    last_name LIKE '%y';



