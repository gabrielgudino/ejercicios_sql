select c.category_name ,
p.product_name ,
od.unit_price,
od.quantity,
sum(od.quantity * od.unit_price) over(partition by c.category_name)
from order_details od
inner join products p on od.product_id = p.product_id
inner join categories c on p.category_id = c.category_id
order by c.category_name , p.product_name
