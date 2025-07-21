/*
 Obtener los actores y el número de películas en las que han actuado usando una subconsulta SELECT aunque se puede hacer tambien con join y group by
*/
select "actor"."first_name" as "nombre",  "actor"."last_name" as "apellido",
    (   select count("film_id")
        from "film_actor"
        where "film_actor"."actor_id" = "actor"."actor_id"
    ) as "numero_de_peliculas"
from "actor"
order by  "numero_de_peliculas" DESC;





