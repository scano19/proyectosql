/*
calcula la duración total de las películas en la categoría 'action'
*/
select sum("film"."length") as "duracion_total_peliculas"
from "film"
left join "film_category" on "film"."film_id" = "film_category"."film_id"
left join "category" on "film_category"."category_id" = "category"."category_id"
where "category"."name" = 'Action';