/*
Encuentra el número de películas por categoria estrenadas en 2006. primero número de películas por categoria uniendo 3 tablas y luego clasificar por 2006 con where antes de group
*/
with numero_peliculas_por_categoria as( 
     select count("film"."film_id") as "numero_peliculas" , "category"."name" as "nombre_categoria"
     from "category"
     join "film_category" on "category"."category_id" = "film_category"."category_id"
     join "film" on "film_category"."film_id" = "film"."film_id"
     where "film"."release_year" = '2006'
     group by "category"."name")
select "numero_peliculas", "nombre_categoria"
from numero_peliculas_por_categoria 
order by "numero_peliculas" desc;


     
