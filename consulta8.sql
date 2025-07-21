/*
Encuentra el titulo de toda las peliculas que son PG-13 O tienen una duración mayor a 3 horas en la tabla film
*/
select "title" as "titulo_pelicula", "rating", "length" as "duracion"
from "film"
where "rating"= 'PG-13' or "length" > 180;


