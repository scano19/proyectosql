/*
Encuentra el promedio de duración de las películas para cada clasificación junto con el promedio de la duración
*/
select avg(length) as "promedio_duracion", "rating" as "clasificación"
from "film"
group by "rating";