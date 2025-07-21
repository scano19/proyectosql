/*
Encuentra los actores que no han participado en películas. No hay ningun actor que no ha participado en películas
*/
select "nombre" || ' ' || "apellido" as "nombre_completo"
from "actor"
where not exists ( --donde no exista
    select 1 --ninguna coincidencia
    from "film_actor" -- de la categoría film
    where "actor"."actor_id" = "film_actor"."actor_id");