/*
Encuentra los nombres de los clientes que han alquilado al menos 7 películas distintas. Ordena los resultados alfabeticamente por apellido. Resolución buscar los alquileres que han hecho por clientes, para ello hay que unir  
4 tablas
*/
with peliculas_alquiladas as (
     select "customer"."customer_id", "customer"."first_name" , "customer"."last_name", count(distinct"film"."film_id") as "numero_de_peliculas" --distinct para peliculas diferentes
     from "customer"
     join "rental" on "customer"."customer_id" = "rental"."customer_id"
     join "inventory" on "rental"."inventory_id" = "inventory"."inventory_id"
     join "film" on "inventory"."film_id"= "film"."film_id"
     group by "customer"."customer_id", "customer"."first_name", "customer"."last_name")
select "first_name", "last_name"
from peliculas_alquiladas 
where "numero_de_peliculas" >= 7
order by "last_name" asc;

     