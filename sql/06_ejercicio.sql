 --¿Cuál fue el monto total de ventas en toda la historia?
select sum(total_venta) from ventas;

/*
EXPLICACIÓN:
Esta consulta nos devuelve la cifra más importante para la contabilidad: el dinero total que ha 
ingresado a la tienda en toda su historia.
- Utiliza la función SUM(), que actúa como una gran calculadora sumando todos los valores 
  registrados en la columna 'total_venta' de la tabla 'ventas'.
- A diferencia de COUNT (que cuenta filas), SUM suma los montos de dinero de cada factura.

¿POR QUÉ ES ÚTIL?
Es el indicador de Ingresos Brutos. Este número es el punto de partida para que el dueño del 
negocio entienda el volumen de dinero que maneja y pueda planear presupuestos, pagar impuestos 
o calcular sus ganancias finales.
*/