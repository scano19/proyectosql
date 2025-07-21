/*
Encuentra la cantidad total de películas alquiladas por categoria y muestra el nombre de la categoria junto con el recuento de alquileres. Hay que unir 5 tablas de rental hasta category.
clasificar por categoria group by y contar los alquileres count rental id
*/
with alquileres_por_categoria as (
     select "category"."name" , count("rental_id") as "alquileres"
     from "category"
     join "film_category" on "category"."category_id" = "film_category"."category_id"
     join "film" on "film_category"."film_id" = "film"."film_id"
     join "inventory" on "film"."film_id" = "inventory"."film_id"
     join "rental" on "inventory"."inventory_id" = "rental"."inventory_id"
     group by "category"."name")
select "name" , "alquileres"
from alquileres_por_categoria
order by "alquileres" desc;


     