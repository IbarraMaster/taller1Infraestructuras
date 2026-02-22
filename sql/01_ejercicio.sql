--¿Cuántos clientes tenemos registrados en total?

SELECT COUNT(*) AS total_clientes FROM clientes;

/*
EXPLICACIÓN:
Este código realiza un censo básico de nuestra base de datos. 
- Utiliza la función COUNT(*) para contar cada una de las filas (registros) dentro de la tabla 'clientes'. 
- El resultado se etiqueta como 'total_clientes' para que el reporte sea fácil de leer.

¿POR QUÉ ES ÚTIL?
Es la métrica base para cualquier negocio. Nos permite conocer el tamaño actual de nuestra comunidad 
y sirve como punto de comparación para medir si el número de usuarios aumenta mes a mes.
*/