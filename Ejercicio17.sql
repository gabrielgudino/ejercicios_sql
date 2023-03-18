select p.product_id ,
p.product_name ,
p.unit_price ,
lag(p.unit_price) over() as lastunitprice,
p.unit_price - (lag(p.unit_price) over()) as pricedifference
from products p
