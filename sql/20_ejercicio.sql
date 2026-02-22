-- Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.

SELECT 
    p.categoria,
    SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total,
    SUM(dv.cantidad) AS unidades_vendidas,
    ROUND(SUM(dv.cantidad * dv.precio_unitario) / COUNT(DISTINCT dv.id_venta), 2) AS ticket_promedio
FROM productos AS p
JOIN detalle_ventas AS dv ON p.id_producto = dv.id_producto
GROUP BY p.categoria
ORDER BY ingreso_total DESC;

/*
EXPLICACIÓN:
Este código genera un resumen ejecutivo del desempeño de cada departamento (categoría) de la tienda.
- SUM(cantidad * precio_unitario): Calcula el dinero real que entró por cada categoría (Ingreso Total).
- SUM(cantidad): Suma cuántos artículos físicos se vendieron en total.
- Ticket Promedio: Es una operación matemática que divide el ingreso total entre el número de ventas únicas (DISTINCT). El resultado se redondea a 2 decimales para que parezca un monto de dinero real.
- GROUP BY p.categoria: Es el motor de la consulta; le dice a SQL que no mezcle todo, sino que haga los cálculos por separado para 'Paracaídas', 'Accesorios', etc.

¿POR QUÉ ES ÚTIL?
Permite comparar "peras con manzanas". Por ejemplo, una categoría puede vender pocas unidades pero generar mucho dinero (como los Paracaídas), mientras otra vende mucho volumen pero poco dinero (como los Accesorios). El "ticket promedio" nos dice cuánto gasta, en promedio, un cliente cada vez que decide comprar algo de esa sección.
*/