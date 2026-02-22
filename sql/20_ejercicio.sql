-- Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.

SELECT 
    p.categoria,
    SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total,
    SUM(dv.cantidad) AS unidades_vendidas,
    ROUND(SUM(dv.cantidad * dv.precio_unitario) / COUNT(DISTINCT dv.id_venta), 2) AS ticket_promedio
FROM productos AS p
JOIN detalle_ventas AS dv ON p.id_producto = dv.id_producto
GROUP BY p.categoria
ORDER BY ingreso_total DESC;