-- 1. Soru) 
select * from invoice 
	where invoice_date is null 
		or billing_address is null 
		or billing_city is null 
		or billing_state is null 
		or billing_country is null 
		or billingpostal_code is null 
		or total is null;


-- 2. Soru) 

select *, (total*2) as twiceTheTotal from invoice order by twiceTheTotal desc;


-- 3. Soru)

select invoice_date,billing_address,CONCAT(left(billing_address, 3),right(billing_address,4 )) as Acik_Adres 
	from invoice 
	where invoice_date BETWEEN '2013-08-01 00:00:00' and '2013-08-31 00:00:00';