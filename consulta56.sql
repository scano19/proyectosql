/* 
 Encuentra el nombre y apellido de los actores que no han actuado en ninguna pelicula de la categoria 'music'. resolución, primero buscar las peliculas de music, 
 después los actores de las peliculas de music, y luego hay que excluirlos para
*/
with peliculas_music as (
     select "film"."film_id"
     from "film"
     join "film_category" on "film"."film_id" = "film_category"."film_id"
     join "category" on "film_category"."category_id"="category"."category_id"
     where "category"."name" = 'Music'
),
actores_music as (
     select distinct "film_actor"."actor_id"
     from "film_actor" 
     where "film_actor"."film_id" in (select "film_id" from peliculas_music)--hacemos la subconsulta para que estén las películas en music
)
select "actor"."nombre" , "actor"."apellido"
from "actor"
where "actor"."actor_id" not in (select "actor_id" from actores_music)--excluimos los actores que no están en actores music 
order by "actor"."apellido" asc;

