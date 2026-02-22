-- ¿Cuáles son los 5 productos con mayor ingresos acumulado?


SELECT 
    p.nombre, 
    SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total
FROM productos AS p
JOIN detalle_ventas AS dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;

/*
EXPLICACIÓN:
Este código identifica el "Top 5" de los productos que más ingresos generan para el negocio.
- SUM(dv.cantidad * dv.precio_unitario): Esta operación multiplica las unidades vendidas por su precio 
  en cada venta y luego suma todos esos resultados para obtener el Ingreso Total por producto.
- JOIN: Conecta la lista de ventas con el catálogo de productos para que podamos ver los nombres reales.
- GROUP BY: Agrupa toda la información por cada producto individual.
- ORDER BY ingreso_total DESC y LIMIT 5: Organiza la lista de mayor a menor ingreso y corta el 
  reporte para mostrarnos únicamente los cinco mejores.

¿POR QUÉ ES ÚTIL?
Es fundamental para la estrategia de inventario y marketing. No siempre el producto que más 
se vende es el que más dinero deja. Este reporte ayuda a identificar los productos "estrella" 
en los que vale la pena invertir más publicidad o asegurar que nunca falten en el stock, 
ya que de ellos depende gran parte de la salud financiera de la tienda.
*/