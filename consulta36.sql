/*
 renombrar la columna "first_name" como nombre y "last_name" como apellido
 */

alter table "actor"
    rename column "first_name" to "nombre";
alter table "actor"
    rename column "last_name" to "apellido";