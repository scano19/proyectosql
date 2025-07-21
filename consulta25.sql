 /*
Averigua el número de alquileres registrados por mes
*/
--convertir el formato de rental_date a año-mes, sacando el año y el mes.

SELECT  EXTRACT(YEAR FROM "rental_date") || '-' ||  EXTRACT(MONTH FROM "rental_date") AS "mes_alquiler",
    COUNT("rental_id") AS "numero_alquileres"
FROM rental
GROUP BY EXTRACT(YEAR FROM "rental_date"), EXTRACT(MONTH FROM "rental_date")
ORDER BY "numero_alquileres" DESC;


