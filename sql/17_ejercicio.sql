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
    
-- Debido al cupo "ULTIMO_SUSPIRO", hemos dejado de ingresar $359.385, donde 359385 es la diferencia entre el total sin descuento y el total con descuento.