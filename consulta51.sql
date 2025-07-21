/*
 crea una tabla temporal llamada "cliente_rentas_temporal" para almacenar el total de alquileres por cliente,solución para que me funcione he tenido que quitar las comillas y dejar una linea en el
 ultimo select para que se me ejecute bien, primero ejecutar la tabla temporal y luego select
 */
create temporary table cliente_rentas_temporal as
select c.customer_id , c.first_name || ' ' || c.last_name AS nombre_cliente, count(r.rental_id) AS total_alquileres   
from customer c 
left join  rental r ON c.customer_id = r.customer_id  
group by  c.customer_id, c.first_name, c.last_name;
    
select customer_id, nombre_cliente, total_alquileres
from cliente_rentas_temporal 
order by total_alquileres desc;
    