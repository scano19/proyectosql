/*
Encuentra la cantidad total de películas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas(entiendo todo los alquileres
aunque se repita alguna película, sino habra que unir 3 tablas y count(distinct("film"."film_id)
*/
select "customer"."customer_id", "customer"."first_name" , "customer"."last_name" , count("rental"."rental_id") as "películas_alquiladas"
from  "customer"
left join "rental" on "customer"."customer_id" = "rental"."customer_id"
group by "customer"."customer_id" ,"customer"."first_name","customer"."last_name"
order by  count("rental"."rental_id") desc; --hay que poner count y no el alias porque sino no sale