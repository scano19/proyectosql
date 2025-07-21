/*
Encuentra los nombres de los actores que han actuado en al menos una pelicula que pertenece a la categoria 'Sci-Fi'.ordena los resultados alfabeticamente por apellido
*/
with peliculas_sci_fi as (
select "film"."film_id", "film"."title"
from "film"
join "film_category" on "film"."film_id" = "film_category"."film_id"
join "category" on "film_category"."category_id" = "category"."category_id"
where "category"."name" = 'Sci-Fi'),
actores as( 
select distinct "actor"."nombre" || ' ' || "actor"."apellido" as "nombre_actor", "actor"."apellido" --incluyo la columna apellido para utilizar en actores abajo
from peliculas_sci_fi
join "film_actor" on "peliculas_sci_fi"."film_id" = "film_actor"."film_id"
join "actor" on "film_actor"."actor_id" = "actor"."actor_id")
select  "nombre_actor"
from actores
order by "apellido" asc;
