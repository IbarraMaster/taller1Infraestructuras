--  ¿Número total de líneas (detalles) de venta registradas?
select count(*) from detalle_ventas;

/*
EXPLICACIÓN:
Esta consulta contabiliza el número total de artículos individuales que han pasado por la caja.
- A diferencia de la tabla 'ventas' (que cuenta facturas), la tabla 'detalle_ventas' registra 
  cada producto por separado dentro de esas facturas.
- COUNT(*) nos dice cuántas filas hay en esta tabla de "desglose".

¿POR QUÉ ES ÚTIL?
Es una métrica de volumen de inventario. Por ejemplo, si tenemos 10 ventas pero 50 detalles 
de venta, significa que, en promedio, cada cliente se lleva 5 productos. Ayuda a entender 
si los clientes compran artículos individuales o si prefieren llevarse varios productos 
en un mismo pedido.
*/