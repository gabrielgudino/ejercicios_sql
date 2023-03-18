select rank() over(order by sum(quantity) desc) as ranking
, p.product_name
, sum(quantity) as totalquantity
from order_details od
inner join products p on p.product_id = od.product_id
group by p.product_name
