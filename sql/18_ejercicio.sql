-- Enlista todos los clientes mayores de 60 años que han hecho compras, mostrando nombre, edad aproximada y total gastado

SELECT 
    c.nombre, 
    (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) AS edad_aproximada,
    SUM(v.total_venta) AS total_gastado
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad_aproximada > 60
ORDER BY edad_aproximada DESC;