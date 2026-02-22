-- ¿Cuál es la diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025?

SELECT 
    MAX(total_mes) - MIN(total_mes) AS diferencia_ingresos
FROM (
    -- Esta es la "mini tabla" que calcula los totales por mes
    SELECT SUM(total_venta) AS total_mes
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY strftime('%m', fecha_venta)
);

/*
EXPLICACIÓN:
Este código calcula la "brecha" o diferencia de dinero entre el mes más exitoso y el mes más flojo del año 2025.
- Subconsulta (la parte de adentro): Primero, SQL crea una tabla temporal que suma todas las ventas y las agrupa por mes. Así obtenemos 12 totales mensuales.
- Consulta Principal (la parte de afuera): Una vez que tenemos esos 12 totales, buscamos el valor máximo (MAX) y el valor mínimo (MIN).
- Operación: Finalmente, restamos el mínimo al máximo para obtener la diferencia exacta en dinero.

¿POR QUÉ ES ÚTIL?
Esta métrica mide la estabilidad del negocio. Si la diferencia es muy grande, significa que la tienda es muy "estacional" (depende de temporadas específicas para sobrevivir). Si la diferencia es pequeña, el negocio es constante y predecible. Es un dato vital para que el dueño sepa cuánto dinero debe ahorrar en los meses buenos para cubrir los meses bajos.
*/