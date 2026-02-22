--  ¿Cuál es el cliente que compró la mayor variedad de productos diferentes (no cantidad, sino tipos distintos)?

SELECT 
    c.nombre, 
    COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas AS dv ON v.id_venta = dv.id_venta
GROUP BY c.id_cliente
ORDER BY variedad_productos DESC
LIMIT 1;