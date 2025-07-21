/*
Encuentra los actores que han participado en peliculas de la categoría 'action'
*/
select "nombre"|| ' ' || "apellido" as "nombre_completo_actor" , 'Action' as "categoria"
from "actor"
where exists (--donde exista
      select 1 --al menos una coincidencia
      from "film_actor"
      join "film" on "film_actor"."film_id" = "film"."film_id"--hace falta unir 4 tablas
      join "film_category" on "film"."film_id" = "film_category"."film_id"
      join "category" on "film_category"."category_id" = "category"."category_id"
      where "category"."name" = 'Action' and "film_actor"."actor_id" = "actor"."actor_id")
order by "nombre_completo_actor" asc;