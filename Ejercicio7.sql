SELECT row_number() over(partition by 1) 
,c.customer_id 
,c.company_name 
,c.contact_name 
,c.contact_title 
,c.address
FROM public.customers c
