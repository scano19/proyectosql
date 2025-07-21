/*
Encuentra todos los alquileres y los nombres de los clientes que los realizaron lo hago como subconsulta pero con join tambien se puede hacer
*/
select "rental_id" as "alquiler",
     (select concat ("first_name", ' ' , "last_name") --seleccionamos el nombre
      from "customer"
      where "customer"."customer_id" = "rental"."customer_id") as "nombre" -- coincidan las dos tablas
from "rental";
