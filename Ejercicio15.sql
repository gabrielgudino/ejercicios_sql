select o.order_id ,
od.product_id ,
od.quantity ,
lag(od.quantity) over()
from orders o
inner join order_details od on o.order_id = od.order_id
