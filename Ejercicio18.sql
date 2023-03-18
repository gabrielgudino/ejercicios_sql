select p.product_name ,
p.unit_price ,
lead(p.unit_price) over() as nextprice
from products p
