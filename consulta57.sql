/*
Encuentra el título de toda las películas que fueron alquiladas por más de 8 días
*/
with alquiler_mas_8dias as (
    select "rental_id", "inventory_id"
    from "rental"
    where "return_date" - "rental_date" > interval '8 days'-- la diferencia de fechas es un intervalo por eso comparo con interval
) 
select "film"."film_id", "film"."title"
from "film"
join "inventory" on "film"."film_id" = "inventory"."film_id"
join alquiler_mas_8dias on "inventory"."inventory_id" = alquiler_mas_8dias."inventory_id"
ORDER BY "film"."title";