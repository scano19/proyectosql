/*
Encuentra las peliculas con una duración superior al promedio
*/
select "title" as "peliculas", "length" as "duración"
from "film"
where "length" > (select avg("length") from "film")
order by "length" desc;