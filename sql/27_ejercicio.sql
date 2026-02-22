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