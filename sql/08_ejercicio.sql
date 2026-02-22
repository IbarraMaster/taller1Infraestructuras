-- ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?

select count(*) from ventas where cupon_usado = 'ULTIMO_SUSPIRO';

/*
EXPLICACIÓN:
Esta consulta se utiliza para medir el éxito de una promoción específica.
- COUNT(*) cuenta las filas que cumplen con la condición solicitada.
- WHERE cupon_usado = 'ULTIMO_SUSPIRO' filtra la tabla de ventas para que 
  SQL solo tome en cuenta aquellas donde el cliente ingresó exactamente ese código.

¿POR QUÉ ES ÚTIL?
Es fundamental para el área de marketing. Permite saber cuántas personas se 
vieron atraídas por la promoción y ayuda a decidir si vale la pena repetir 
este tipo de descuentos en el futuro o si se debe probar con una estrategia diferente.
*/