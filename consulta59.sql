/*
Encuentra los nombres de las peliculas que tienen la misma duración que la película con el título 'Dancing Fever'. Ordenar los resultados
alfabeticamente por título de película. resolución. Buscar la duración de Dancing Fever. Buscar las coincidencias de tiempos de las péliculasalter 
*/
with duracion_DancingFever as (
     select "film"."film_id", "film"."title" , "film"."length" as "duración"
     from "film"
     where "film"."title" = 'DANCING FEVER')
select "film_id", "film"."title", "film"."length"
from "film"
where "film"."length" = ( select "duración" from duracion_DancingFever)--hacemos una subconsulta para comparar la duración
order by "film"."title" asc;
