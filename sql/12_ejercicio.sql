-- ¿Cuál es el precio promedio de los productos en stock?
select avg(precio) from productos where stock > 0;
--Se encuentra que todos los productos estan sin stock, por lo cual el promedio es 0.