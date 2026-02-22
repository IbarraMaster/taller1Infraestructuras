--  ¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO"?

SELECT 
    (SELECT SUM(total_venta) FROM ventas WHERE cupon_usado = 'ULTIMO_SUSPIRO') * 100.0 / 
    SUM(total_venta) AS porcentaje_cupon
FROM ventas;