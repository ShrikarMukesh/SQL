-- select order_id, first_name, last_name, customers.customer_id
-- from orders 
-- join customers 
-- ON orders.customer_id = customers.customer_id;

select order_id, oi.product_id , quantity, unit_price
from order_items oi
join products prd 
ON oi.product_id = prd.product_id;

-- select emp.employee_id ,
--        emp.first_name,
--        mag.first_name As Manager
-- from employees emp
-- JOIN employees mag
--    ON emp.reports_to = mag.employee_id;

select emp.first_name as CEO
from employees emp
where emp.reports_to IS NULL;