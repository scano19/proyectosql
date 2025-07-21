/*
 obtener todas las peliculas y mostrar los actores que han actuado en ellas, incluso si algunas películas no tienen asociados
*/
select "film"."title" as "pelicula" , "actor"."first_name" || ' ' || "actor"."last_name" as "nombre_actor"
from "film"
left join "film_actor" on "film"."film_id" = "film_actor"."film_id"-- left join para el caso de que no tenga actores
left join "actor" on "film_actor"."actor_id" = "actor"."actor_id"--unir las dos tablas
order by  "film"."title", "actor"."last_name";