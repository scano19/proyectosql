/*
Encuentra el nombre y apellido de los actores que aparecen en la película con título 'Egg Igby'
*/
select "actor"."first_name", "actor"."last_name"
from "actor"
--tengo que unir 3 tablas para conseguir todo los datos
join "film_actor" on "actor"."actor_id" = "film_actor"."actor_id"
join "film" on "film_actor"."film_id" = "film"."film_id"
where "film"."title" = 'EGG IGBY';