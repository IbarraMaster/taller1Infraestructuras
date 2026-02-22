-- ¿Cuáles son los 5 productos con mayor ingresos acumulado?


SELECT 
    p.nombre, 
    SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total
FROM productos AS p
JOIN detalle_ventas AS dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;