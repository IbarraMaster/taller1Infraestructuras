--  ¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO"?

SELECT 
    (SELECT SUM(total_venta) FROM ventas WHERE cupon_usado = 'ULTIMO_SUSPIRO') * 100.0 / 
    SUM(total_venta) AS porcentaje_cupon
FROM ventas;

/*
EXPLICACIÓN:
Este código calcula el peso relativo de la promoción "ULTIMO_SUSPIRO" sobre el total de los ingresos de la tienda.
- Subconsulta (numerador): El primer SELECT busca exclusivamente la suma de las ventas donde se aplicó el cupón.
- División (denominador): Ese resultado se divide entre la suma total de todas las ventas de la tabla (SUM sin filtros).
- El factor * 100.0: Se usa el ".0" para asegurar que SQL trate el número como un decimal (float) y no como un entero, permitiéndonos ver el porcentaje exacto.

¿POR QUÉ ES ÚTIL?
Es una métrica de "salud de marca". Si el porcentaje es muy alto (por ejemplo, más del 50%), significa que los clientes solo compran cuando hay descuentos y que el negocio podría tener problemas para vender a precio completo. Ayuda a encontrar el equilibrio justo entre atraer gente con ofertas y mantener la rentabilidad.
*/