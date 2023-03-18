select avg(od.unit_price * od.quantity) over(partition by customer_id)
, o.order_id
, customer_id
, employee_id
, order_date
, required_date
, shipped_date
from orders o
inner join order_details od on o.order_id = od.order_id
