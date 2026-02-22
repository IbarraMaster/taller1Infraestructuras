-- ¿Cuál es el precio promedio de los productos en stock?
select avg(precio) from productos where stock > 0;

/*
EXPLICACIÓN:
Esta consulta calcula cuánto cuesta, en promedio, un producto de los que tenemos actualmente para vender.
- Utiliza la función AVG() (average), que suma todos los precios y los divide por el número total de productos.
- La condición WHERE stock > 0 es clave: le dice a SQL que solo tome en cuenta los productos que sí tenemos en bodega. Ignora los productos que están agotados para no alterar el promedio con artículos que ya no ofrecemos.

¿POR QUÉ ES ÚTIL?
Le da al negocio una idea clara de su posicionamiento de precios. Si el promedio es alto, la tienda tiende hacia lo premium; si es bajo, es una tienda de volumen y precios accesibles. Además, ayuda a calcular el valor estimado de la mercancía que está lista para salir a la venta.
*/

