/*
Encuentra la mayor y menor duración de una película de nuestra BBDD
*/
SELECT MAX("length") AS "Maxima_duración" , MIN("length") as "Minima_duración"
FROM "film";
