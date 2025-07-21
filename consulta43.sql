/*
Muestra todo los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres
*/
select concat("first_name", ' ', "last_name") as "nombre_completo_cliente", "rental_id" as "alquileres"
from "customer"
left join "rental" on "customer"."customer_id" = "rental"."customer_id" -- con left join aseguramos que todo los regitros de la tabla customer se vean
order by  "alquileres" desc;