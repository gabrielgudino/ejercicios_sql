select p.product_id
, p.product_name 
, p.unit_price 
,p.category_id
,max(unit_price) over(partition by p.category_id ) maxunitprice
FROM public.products p
order by p.product_id, p.product_name , p.unit_price ,p.category_id