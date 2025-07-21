/*
 entiendo que selecciono todo los nombres de las películas nuevas
 */
select "film"."title" 
from "film"
--hay que unir dos tablas para dar el resultado
join "film_category" on "film"."film_id" = "film_category"."film_id"
join "category" on "film_category"."category_id" = "category"."category_id"
--he visto los nombres de las categorias y supongo que es new la categoría.
where "category"."name" = 'New';