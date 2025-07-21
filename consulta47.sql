/*
selecciona el nombre de los actores y la cantidad de películas en las que han participado
*/
select "nombre" || ' ' || "apellido" as "nombre_completo_actor", count("film_actor"."film_id") as "participaciones"
from "actor"
join "film_actor" on "actor"."actor_id"="film_actor"."actor_id"
group by "actor"."actor_id", "actor"."nombre", "actor"."apellido"
order by "nombre_completo_actor";
