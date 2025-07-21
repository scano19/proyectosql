/*
muestra el id de los actores que hayan participado en más de 40 películas
*/
select "actor_id" 
from "film_actor"
--unir con la tabla film a tráves de film_id
join "film" on "film_actor"."film_id" = "film"."film_id"
group by "actor_id"
having count("film"."film_id") > 40;
