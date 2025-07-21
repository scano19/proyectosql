/*
Encuentra la cantidad total de peliculas en cada clasificación de la tabla "film" y muestra la clasificación junto con el recuento
*/
select "rating", count("rating") as "total"
from "film"
group by "rating";







