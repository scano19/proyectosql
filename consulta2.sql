
/*
 Muestra los nombres de todas las peliculas con una clasificación de R
 */

select "film_id","title","rating"
from "film"
where "rating" = 'R';
