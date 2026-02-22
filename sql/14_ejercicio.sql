--  ¿Cuántos productos tenemos en la categoría "Paracaídas"?
select * from ventas where fecha_venta >= '2025-01-01' AND fecha_venta <= '2025-12-31' ORDER BY fecha_venta DESC; 

/*
EXPLICACIÓN:
Esta consulta funciona como un "archivo histórico" para revisar toda la actividad de un año específico.
- Selecciona toda la información (SELECT *) de las transacciones en la tabla 'ventas'.
- El filtro WHERE utiliza dos fechas límites para atrapar únicamente lo ocurrido entre 
  el 1 de enero y el 31 de diciembre de 2025.
- ORDER BY fecha_venta DESC organiza los resultados para que las ventas más recientes 
  (las de diciembre) aparezcan primero en la lista.

¿POR QUÉ ES ÚTIL?
Es fundamental para realizar el cierre de caja anual y auditorías. Permite a los 
administradores revisar el flujo de ventas de un periodo completo, identificar 
patrones de compra a lo largo del año y verificar que todos los registros de 
ese ciclo estén correctos.
*/