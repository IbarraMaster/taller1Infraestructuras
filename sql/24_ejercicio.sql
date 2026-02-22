--  Para cada mes en 2025, calcula: total de ventas, número de transacciones, y ticket promedio.

SELECT 
    strftime('%m', fecha_venta) AS mes,
    SUM(total_venta) AS ingreso_total,
    COUNT(id_venta) AS numero_transacciones,
    ROUND(AVG(total_venta), 2) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY mes
ORDER BY mes ASC;

/*
EXPLICACIÓN:
Este código genera un reporte de rendimiento mensual para ver la evolución de la tienda durante el año 2025.
- strftime('%m', ...): Extrae el número del mes (del 01 al 12) de la fecha de venta para poder agrupar los datos.
- SUM(total_venta): Suma todo el dinero ingresado en ese mes específico.
- COUNT(id_venta): Cuenta cuántas facturas se emitieron, lo que nos da el volumen de actividad.
- ROUND(AVG(total_venta), 2): Calcula el promedio de gasto por cada compra y lo redondea a dos decimales.
- WHERE y GROUP BY: Filtra para que solo veamos el año 2025 y organiza los cálculos para que aparezcan mes por mes.

¿POR QUÉ ES ÚTIL?
Permite identificar las "Temporadas Altas y Bajas". Por ejemplo, en un negocio de paracaidismo, podríamos notar que los ingresos suben en meses de vacaciones o buen clima. Esto ayuda al dueño a decidir cuándo contratar más personal, cuándo lanzar promociones para subir el ticket promedio o cuándo ahorrar para los meses más flojos.
*/