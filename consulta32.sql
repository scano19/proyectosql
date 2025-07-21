/*
 obtener todos los actores y mostrar las películas que han actuado en ellas, incluso si algunas actores no han actuado en ninguna película
*/
select "actor"."first_name" || ' ' || "actor"."last_name" as "nombre_actor" ,"film"."title" as "pelicula"
from "actor"
left join "film_actor" on "actor"."actor_id" = "film_actor"."actor_id" -- left join para el caso de que no tenga peliculas
left join "film" on "film_actor"."film_id" = "film"."film_id" --unir las dos tablas
order by "actor"."last_name" ,"film"."title";