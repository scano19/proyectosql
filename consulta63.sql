/*
obten todas las combinaciones posibles de trabajadores con las tiendas que tenemos. con cross join
*/

 select "staff"."staff_id", "staff"."first_name" , "staff"."last_name" , "store"."store_id"
 from "staff"
 cross join "store";
    

