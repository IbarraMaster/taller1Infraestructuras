-- ¿Cuál fue la venta con mayor monto en toda la historia?

select max(total_venta) from ventas; 

/*
EXPLICACIÓN:
Esta consulta busca el valor más alto registrado en una sola factura.
- Utiliza la función MAX(), que inspecciona toda la columna 'total_venta' y 
  selecciona únicamente el número más grande.
- A diferencia de SUM (que suma todo) o COUNT (que cuenta cuántas hay), 
  MAX nos devuelve el valor de la venta individual más costosa.

¿POR QUÉ ES ÚTIL?
Es un indicador de éxito en ventas individuales. Conocer este monto ayuda 
al negocio a entender cuál es el potencial máximo de gasto de un cliente 
en una sola visita y permite analizar qué productos se vendieron en esa 
ocasión para intentar repetir ese éxito.
*/