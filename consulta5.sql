/*
ordena las películas por duración de forma ascendente
*/
select "film_id", "title", "length" as "duración"
from "film"
order by "length" ASC;