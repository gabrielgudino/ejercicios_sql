SELECT p.product_name
,c.category_name
,p.quantity_per_unit
,od.unit_price 
, od.quantity
, avg(od.quantity) over(partition by p.category_id)
FROM public.products p
inner join order_details od on p.product_id = od.product_id
inner join public.categories c on p.category_id =c.category_id
order by c.category_name,p.product_name;