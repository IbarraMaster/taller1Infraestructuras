-- Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.

SELECT 
    c.nombre, 
    SUM(v.total_venta) AS total
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY total DESC
LIMIT 1;

--En la consulta anterior se puede observar como el cliente que mas dinero ha gastado en total es Eligia Robles Iniessta con un total de $65.440.QQ