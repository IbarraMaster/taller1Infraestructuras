-- Crea una clasificación de clientes por nivel de gasto:
--  "Alto Valor" si gastó más de $5,000
--  "Medio Valor" si gastó entre $2,000 y $5,000
--  "Bajo Valor" si gastó menos de $2,000
--  Muestra nombre, categoría de gasto y total gastado.

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado,
    CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) >= 2000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS categoria_gasto
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY total_gastado DESC;