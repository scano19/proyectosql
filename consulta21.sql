/*
cual es la media de duración del alquiler de las peliculas
*/
select avg ("return_date"-"rental_date") as "duración_media_alquiler"
from "rental";



