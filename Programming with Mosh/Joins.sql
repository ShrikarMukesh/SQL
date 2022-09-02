-- select order_id, first_name, last_name, customers.customer_id
-- from orders 
-- join customers 
-- ON orders.customer_id = customers.customer_id;

use sql_store;

select oi.order_id, oi.product_id , quantity, oi.unit_price
from order_items oi
join products prd 
ON oi.product_id = prd.product_id;

-- select emp.employee_id ,
--        emp.first_name,
--        mag.first_name As Manager
-- from employees emp
-- JOIN employees mag
--    ON emp.reports_to = mag.employee_id;

-- select the employees with max length and min length

(select first_name , length(first_name)
from employees
order by length(first_name) asc , first_name asc limit 1)
UNION ALL (
  select first_name , length(first_name)
  from employees
  order by length(first_name) desc , first_name desc limit 1
);

select emp.first_name as CEO
from employees emp
where emp.reports_to IS NULL;

