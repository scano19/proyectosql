/*
Encuentra las categorías de películas que tienen un promedio de duración superior a 110 minutos y muestra el nombre de la categoria junto con el promedio de duraciónalter 
*/
select "category"."name" as "categoria", avg ("film"."length") as "promedio duracion"
from "film"
join "film_category" on "film"."film_id" = "film_category"."film_id"
join "category" on "film_category"."category_id" = "category"."category_id"
--poniendo las dos condiciones por categoria y promedio por encima de 110 minutos
group by "category"."name"
having avg("film"."length") > 110;
