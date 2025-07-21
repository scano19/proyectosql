        /*
Encuentra el título de todas las películas que son de la misma categoria que 'Animation'
*/
select "film"."film_id", "film"."title"
from "film"
join "film_category" on "film"."film_id" = "film_category"."film_id"
join "category" on "film_category"."category_id" = "category"."category_id"
where "category"."name" = 'Animation';