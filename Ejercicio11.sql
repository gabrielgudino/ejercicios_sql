select c.country 
, o.order_id
, o.shipped_date
, o.freight
, sum(o.freight) over(partition by c.country)
from customers c
inner join orders o on c.customer_id = o.customer_id
where o.shipped_date is not null
order by c.country , o.order_id
