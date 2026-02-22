--¿Cuántas transacciones de venta hemos registrado?

select count(*) from ventas;

/*
EXPLICACIÓN:
Este código contabiliza el total de operaciones comerciales que se han realizado en la tienda.
- Utiliza la función COUNT(*) para contar cuántas filas existen en la tabla 'ventas'.
- Cada fila representa un "ticket" o factura emitida, independientemente de cuántos productos 
  incluyera esa compra o de quién fuera el cliente.

¿POR QUÉ ES ÚTIL?
Mientras que el número de clientes nos dice cuántas personas nos conocen, el número de 
transacciones nos dice qué tan activa está la tienda. Es una métrica de flujo que ayuda 
a calcular la frecuencia con la que los clientes regresan a comprar.
*/