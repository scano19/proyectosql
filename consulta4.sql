
/*
Obten las películas cuyo idioma coincide con el idioma original
*/
select "film_id","title","language_id" as "idioma","original_language_id" as "idioma original"
from "film"
where "language_id" = "original_language_id";
-- al no tener datos o no son conocidos los de la columna original_language no podemos buscar si están en su idioma original, toda las pelicuals están en ingles número1--

