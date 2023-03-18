select o.order_id ,
o.order_date ,
o.customer_id ,
lag(o.order_date) over(partition by o.customer_id order by o.order_date asc)
from orders o
