-- ¿Cuál es el producto más vendido en cantidad (en términos de unidades, no dinero)?


SELECT 
    p.nombre, 
    SUM(dv.cantidad) AS total_unidades
FROM detalle_ventas AS dv
JOIN productos AS p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto
ORDER BY total_unidades DESC
LIMIT 1;