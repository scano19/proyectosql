/*
Realiza un cross join entre las tablas film y category. ¿aporta valor esta consulta? ¿porque? Deja después de la consulta la contestación.Respuesta:esta consulta no aporta valor, a parte de que las tablas no están relacionadas directamente, mete cada pelicula en toda las categorias de peliculas que hay lo cual no
tiene sentido, cada película pertenece a una categoría.
*/
select "film"."title" , "category"."name"
from "film"
cross join "category";

