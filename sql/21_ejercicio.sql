-- ¿Cuáles son los clientes que han usado el cupón "ULTIMO_SUSPIRO" al menos 3 veces?

SELECT 
    c.nombre, 
    COUNT(v.id_venta) AS cantidad_usos
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY c.id_cliente
HAVING cantidad_usos >= 3 order by cantidad_usos desc;

/*
EXPLICACIÓN:
Esta consulta identifica a los clientes que han aprovechado la promoción "ULTIMO_SUSPIRO" de manera frecuente.
- JOIN: Conectamos 'clientes' con 'ventas' para saber quién es la persona detrás de cada factura.
- WHERE: Primero filtramos la tabla para quedarnos únicamente con las ventas que usaron el cupón específico.
- GROUP BY: Agrupamos los registros por cliente para poder contar cuántas veces aparece cada uno.
- HAVING: Es el filtro de "frecuencia". A diferencia del WHERE, el HAVING actúa después de contar, permitiéndonos mostrar solo a quienes lo usaron 3 veces o más.
- ORDER BY: Los organiza de mayor a menor frecuencia de uso.

¿POR QUÉ ES ÚTIL?
Permite identificar a los clientes más leales a nuestras promociones. Estos usuarios son 
muy sensibles al precio; saber quiénes son ayuda al negocio a decidir si debe 
limitar el uso de cupones por persona o si, por el contrario, debe enviarles 
promociones exclusivas para asegurar que sigan comprando.
*/