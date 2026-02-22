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

/*
EXPLICACIÓN:
Este código genera una "alerta de abandono" identificando a los clientes que llevan mucho tiempo sin interactuar con la tienda.
- MAX(v.fecha_venta): Busca la fecha de la transacción más reciente de cada persona para saber cuándo fue la última vez que nos visitó.
- JOIN: Une la información de contacto de los clientes con su historial de compras.
- HAVING: Es el filtro de inactividad. Compara la última compra con la fecha actual ('now') y selecciona solo a quienes no han comprado en los últimos 180 días (aprox. 6 meses).
- ORDER BY: Coloca primero a los clientes que llevan más tiempo desaparecidos (los de mayor riesgo).

¿POR QUÉ ES ÚTIL?
Es mucho más barato recuperar a un cliente que ya nos conoce que conseguir uno nuevo. Este reporte permite al equipo de marketing realizar una "campaña de reactivación", como enviar un correo personalizado o un cupón de descuento especial para invitarlos a volver, evitando que se olviden de la marca.
*/