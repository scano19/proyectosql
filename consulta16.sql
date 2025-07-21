/*
muestra los 10 clientes con mayor valor de id
*/
select concat("first_name",' ',"last_name") as "nombre_clientes", "customer_id"
from "customer"
order by "customer_id" desc 
limit 10;