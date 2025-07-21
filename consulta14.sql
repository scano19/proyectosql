/*
Encuentra el título de todas las películas que tengan una duración mayor a 180 minutos
*/
select "title" as "titulo_pelicula" , "length" as "duración"
from "film"
where "length" > 180;