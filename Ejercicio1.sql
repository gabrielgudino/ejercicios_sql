select c.category_name, 
product_name, 
unit_price, 
avg(unit_price) OVER(PARTITION BY c.category_id)
from products p
inner join categories c on p.category_id = c.category_id