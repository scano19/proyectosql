/*
obtener todas las peliculas que tenemos y todos los registros de alquiler
*/
select "film"."title" as "pelicula" , "rental"."rental_id" as "registro_alquiler"
from "film"
left join "inventory" on "film"."film_id" = "inventory"."film_id" --unimos las tablas con su primary key y foreign key
left join "rental" on "inventory"."inventory_id" = "rental"."inventory_id"
order by "film"."title" , "rental"."rental_id";
