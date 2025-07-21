/*
Encuentra el título de las películas que son comedias y tienen una duración mayor a 180 minutos en la tabla "film"
*/
select "title" as "titulo"
from "film"
--uno las dos tablas necesarias para conseguir los datos
join "film_category" on "film"."film_id" = "film_category"."film_id"
join "category" on "film_category"."category_id" = "category"."category_id"
--incluyo las dos condiciones de las dos tablas
where "category"."name" = 'Comedy' and "film"."length" > 180;