/*
Encuentra el promedio, la desviación standar y varianza del total pagado
*/
select round(avg("amount"),2) as "promedio_pago",
       round(stddev("amount"),2) as "desviación_estandar",
       round(variance("amount"),2) as "varianza"
from "payment";
