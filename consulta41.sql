/*
agrupa los actores por su nombre y cuenta cuantos actores tienen el mismo nombre.¿cual es el nombre más repetido?
*/
select "nombre", count("nombre") as "repeticiones"
from "actor"
group by "nombre"
order by "repeticiones" desc;