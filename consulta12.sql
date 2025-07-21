/*
Encuentra el título de las películas en la tabla film que no sean ni NC-17 ni G
*/
select "title", "rating" as "clasificación"
from "film"
where "rating" not in ('NC-17','G');