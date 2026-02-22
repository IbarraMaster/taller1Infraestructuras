--  Genera un análisis demográfico: para cada rango de edad (18-29, 30-39, ..., 70+), cuenta clientes únicos, número de transacciones e ingresos totales. Ordena por rango de edad.

SELECT 
    CASE 
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 18 AND 29 THEN '18-29'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 30 AND 39 THEN '30-39'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 40 AND 49 THEN '40-49'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 50 AND 59 THEN '50-59'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,
    COUNT(v.id_venta) AS total_compras,
    SUM(v.total_venta) AS ingresos
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY rango_edad;

/*
EXPLICACIÓN:
Esta consulta agrupa a todos los clientes en "cubetas" o rangos de edad para analizar su comportamiento de compra.
- CASE: Calcula la edad actual de cada cliente y le asigna una etiqueta (como '18-29' o '50-59'). Esto convierte un dato individual (la fecha de nacimiento) en una categoría útil para el negocio.
- COUNT(DISTINCT id_cliente): Nos dice cuántas personas únicas hay en cada rango.
- COUNT(id_venta) y SUM(total_venta): Miden la actividad y el dinero aportado por cada generación.
- GROUP BY rango_edad: Organiza todos los cálculos para que se presenten de forma consolidada por cada etapa de la vida.

¿POR QUÉ ES ÚTIL?
Permite descubrir quiénes son tus mejores clientes. Por ejemplo, podrías notar que los de '30-39' son los que más dinero gastan, pero los de '18-29' son los que más veces compran. Con esta información, la tienda puede decidir si sus anuncios en redes sociales deben dirigirse a jóvenes aventureros o a personas con mayor estabilidad económica, optimizando así el presupuesto de publicidad.
*/