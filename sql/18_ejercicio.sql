-- pendiente

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

