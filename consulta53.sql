/*
encuentra el título de las películas que han sido alquiladas por el cliente con el nombre 'Tammy Sanders' y que aún no se han devuelto. Ordena los
resultados alfabeticamente por título de película.
*/

with alquiler_cliente as (--calculamos las películas alquiladas por Tammy Sanders
select "rental"."inventory_id"  
from "customer"
join "rental" on "customer"."customer_id" = "rental"."customer_id"
where "customer"."first_name" || ' ' || "customer"."last_name" = 'TAMMY SANDERS' and "rental"."return_date" is null --no hay fecha de devolución
),
peliculas_alquiladas as( --obtenemos los títulos únicos de las películas
select distinct "film"."title"
from alquiler_cliente
join "inventory" on  "alquiler_cliente"."inventory_id" = "inventory"."inventory_id"
join "film" on "inventory"."film_id" = "film"."film_id"
)
select "title"
from peliculas_alquiladas
order by "title";

 
     