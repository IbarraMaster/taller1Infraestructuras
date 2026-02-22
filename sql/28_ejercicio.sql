--  Crea un reporte de "clientes de riesgo": aquellos cuya última compra fue hace más de 180 días a partir de hoy. Muestra nombre, correo y fecha de última compra.

SELECT 
    c.nombre, 
    c.correo, 
    MAX(v.fecha_venta) AS ultima_compra
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING ultima_compra < date('now', '-180 days')
ORDER BY ultima_compra ASC;