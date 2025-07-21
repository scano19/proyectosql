/*
crea una tabla temporal llamada "peliculas_alquiladas" que almacene las películas que han sido alquiladas al menos 10 veces. solución he tenido que quitar las comillas
y dejar una fila en el último select para que se ejecute bien.
*/
create temporary table peliculas_alquiladas as --creamos tabla temporal
select f.film_id, f.title, count(r.rental_id) as total_alquiler
from film f
join inventory i on f.film_id = i.film_id--uso de inner join para excluir películas sin inventario o alquiler.
join rental r on i.inventory_id = r.inventory_id
group by f.film_id, f.title
having count(r.rental_id) >= 10;

select *
from peliculas_alquiladas ;
