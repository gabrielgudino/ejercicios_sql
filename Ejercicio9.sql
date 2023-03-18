SELECT sum(od.unit_price * od.quantity) over(partition by cus.customer_id) sumordeamount
,o.order_id
,cus.customer_id
,o.employee_id 
,o.order_date
, o.required_date
FROM public.products p
inner join public.categories c on p.category_id =c.category_id
inner join order_details od on p.product_id = od.product_id
inner join orders o on od.order_id = o.order_id
inner join customers cus on o.customer_id =cus.customer_id
