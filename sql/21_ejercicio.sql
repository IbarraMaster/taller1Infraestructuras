-- ¿Cuáles son los clientes que han usado el cupón "ULTIMO_SUSPIRO" al menos 3 veces?

SELECT 
    c.nombre, 
    COUNT(v.id_venta) AS cantidad_usos
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY c.id_cliente
HAVING cantidad_usos >= 3 order by cantidad_usos desc;