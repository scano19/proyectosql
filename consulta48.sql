/*
crea una vista llamada "actor_num_peliculas" que muestre los nombres de los actores y el número de películas en las que han participado
*/
create or replace view actor_num_peliculas as
select "actor"."nombre" || ' ' ||"actor"."apellido" as "nombre_actores" , count("film_actor"."film_id") as "participaciones"
from "actor"
left join "film_actor" on "actor"."actor_id" = "film_actor"."actor_id"--incluye actores con 0 peliculas
group by "actor"."actor_id", "actor"."nombre" , "actor"."apellido"
order by "participaciones" desc;
select *
from  actor_num_peliculas
