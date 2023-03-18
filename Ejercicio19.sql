select c.category_name ,
sum(od.quantity * od.unit_price) as totalsales,
lead(sum(od.quantity * od.unit_price) ) over(order by c.category_name) nexttotales
from order_details od
inner join products p on od.product_id = p.product_id
inner join categories c on p.category_id = c.category_id
group by c.category_name
