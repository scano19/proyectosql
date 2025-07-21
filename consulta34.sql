/*
Encuentra los 5 clientes que más dinero se hayan gastado con nosotros
*/
select "customer"."first_name" || ' ' || "customer"."last_name" as "nombre_cliente",
       (select sum("payment"."amount") --sumatorio de los gastos por cliente
        from "payment"
        where "payment"."customer_id" = "customer"."customer_id") as "suma_total"
from "customer"
order by "suma_total" desc --ordenar por suma total de pago
limit 5; -- que se vean los 5 primeros