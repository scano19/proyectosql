/*
Encuentra lo que costó el antepenultimo alquiler ordenado por día
*/
select "amount" as "coste_alquiler", "payment_date" as "fecha", "payment_id"
from "payment"
-- en la misma fecha hay varios alquileres, para saber cual es el último a través del payment_id
order by "payment_date" desc , "payment_id" desc
limit 1 offset 2;
