-- ¿Cuánto dinero hemos dejado de ingresar por el cupón "ULTIMO_SUSPIRO"? 

WITH calculo_cupon AS (
    SELECT 
        SUM(total_venta) AS total_con_descuento,
        SUM(total_venta / 0.7) AS total_sin_descuento
    FROM ventas
    WHERE cupon_usado = 'ULTIMO_SUSPIRO'
)
SELECT 
    total_sin_descuento,
    total_con_descuento,
    (total_sin_descuento - total_con_descuento) AS dinero_dejado_de_ingresar
FROM calculo_cupon;
    
/*
EXPLICACIÓN:
Este código calcula el "costo" de la promoción "ULTIMO_SUSPIRO" mediante una operación matemática inversa.
- Utilizamos una CTE (una tabla temporal llamada 'calculo_cupon') para realizar dos cálculos:
  1. Sumamos lo que realmente cobramos (total_con_descuento).
  2. Revertimos el descuento del 30% (dividiendo entre 0.7) para proyectar cuánto dinero 
     hubiéramos recibido si los productos se hubieran vendido a su precio original.
- Al final, restamos ambos montos para obtener la cifra exacta que la tienda "dejó de ganar" 
  a cambio de aplicar la promoción.

¿POR QUÉ ES ÚTIL?
Es fundamental para evaluar el Retorno de Inversión (ROI). Todo descuento es una inversión 
en marketing; este reporte le dice al dueño del negocio exactamente cuánto le costó esa 
estrategia, permitiéndole decidir si el aumento en el volumen de ventas compensó el 
dinero que se dejó de percibir por cada unidad vendida.
*/