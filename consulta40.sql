/*
selecciona las primeras 5 películas de la tabla film
*/
select "title" as "pelicula" , "film_id"
from "film"
order by "film_id" asc
limit 5;
