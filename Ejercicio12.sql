select c.customer_id ,
c.company_name,
sum(od.quantity * od.unit_price),
rank() over(order by sum(od.quantity * od.unit_price) desc)
from orders o
inner join order_details od on od.order_id = o.order_id
inner join customers c on o.customer_id = c.customer_id
group by c.customer_id