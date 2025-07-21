/*
 ¿que peliculas se alquilan por encima del precio medio?
 */
select "title" as "peliculas"
from "film"
where "rental_rate" > (select avg("rental_rate") from  "film");