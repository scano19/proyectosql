/*
Encuentra el nombre y apellido de los actores que han actuado en películas que se alquilaron después de que la pelicula 'spartacus' se alquilara por primera vez
pasos a realizar. encontrar la primera fecha de alquiler de la pelicula, luego identificar las peliculas después de esa fecha, usaremos ctes.*/
with fecha_spartacus as (
select min("rental"."rental_date") as "primera_fecha"
from "film" 
join "inventory" on "film"."film_id" = "inventory"."film_id"
join "rental" on "inventory"."inventory_id" = "rental"."inventory_id"
where "film"."title" = 'SPARTACUS CHEAPER' ),
peliculas_alquiladas as (--peliculas alquildas despúes de spartacus cheaper
select distinct "film"."film_id","film"."title"
from "rental"
join "inventory" on "rental"."inventory_id" = "inventory"."inventory_id"
join "film" on "inventory"."film_id" = "film"."film_id"
where "rental"."rental_date" > (select "primera_fecha" from fecha_spartacus) --subconsulta de primera fecha, se podría usar crossjoin al ser solo una fecha y combinar con todos
),
actores as (
select distinct "actor"."nombre" || ' '|| "actor"."apellido" as "nombre_actor", "actor"."apellido" as "apellido"
from peliculas_alquiladas 
join "film_actor" on peliculas_alquiladas."film_id" = "film_actor"."film_id"
join "actor" on "film_actor"."actor_id" = "actor"."actor_id")
select "nombre_actor"
from actores
order by "apellido" asc;
