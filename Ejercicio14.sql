select p.product_id ,
p.product_name ,
p.unit_price ,
rank() over(order by p.unit_price desc)
from products p
