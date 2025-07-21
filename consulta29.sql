/*
obtener todas las peliculas y , si están disponibles en el inventario, mostrar la cantidad disponible
*/
select "title" as "pelicula",
       (select count(*) --subconsulta creando una columna nueva con los inventarios
        from "inventory"
        where "film"."film_id" = "inventory"."film_id") as "inventario_pelicula"
from "film";

