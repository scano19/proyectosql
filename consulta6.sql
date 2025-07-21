/*
Encuentra el nombre y apellido de los actores que tengan 'allen`en su apellido'
*/
select "actor_id" , "first_name", "last_name" as "apellido"
from "actor" 
where "last_name" = 'ALLEN';


