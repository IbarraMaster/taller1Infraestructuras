-- Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.

SELECT 
    c.nombre, 
    SUM(v.total_venta) AS total
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY total DESC
LIMIT 1;

/*
EXPLICACIÓN:
Esta consulta identifica al cliente que ha generado la mayor facturación para el negocio.
- Utiliza un JOIN para conectar la tabla de 'clientes' con la de 'ventas'. Esto es necesario porque el nombre de la persona vive en una tabla, pero el dinero que gastó vive en otra.
- SUM(v.total_venta) suma todos los montos de todas las compras de cada persona.
- GROUP BY es fundamental: le dice a SQL que haga "pilas" de facturas por cada cliente antes de sumarlas. Sin esto, sumaríamos el total de todos mezclados.
- ORDER BY total DESC pone al que más gastó al principio de la lista y LIMIT 1 corta el reporte para mostrarnos únicamente al primer lugar.

¿POR QUÉ ES ÚTIL?
Es la base del marketing de fidelización. Conocer a nuestro cliente con mayor gasto permite al negocio ofrecerle beneficios exclusivos, regalos de agradecimiento o un trato preferencial para asegurar que siga eligiéndonos frente a la competencia.
*/