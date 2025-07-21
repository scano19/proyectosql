/*
numeros de alquiler por día, ordenados por cantidad de alquiler de forma descendente
*/
select count(rental_id) as "números_dealquiler", date ("rental_date") as "dia_alquiler"
from "rental"
--agrupar por día completo con date
group by date ("rental_date")
order by count("rental_id") desc;
