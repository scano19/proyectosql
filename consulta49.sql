/*
calcula el numero total de alquileres realizados por cada cliente
*/
select "customer"."first_name" || ' ' || "customer"."last_name" as "nombre_cliente" , count("rental"."rental_id") as "número_alquileres"
from "customer"
join "rental" on "customer"."customer_id" = "rental"."customer_id" 
group by "customer"."customer_id"
order by "número_alquileres" desc;

