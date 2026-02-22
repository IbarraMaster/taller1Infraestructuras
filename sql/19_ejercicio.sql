-- ¿Cuál es el producto más vendido en cantidad (en términos de unidades, no dinero)?


SELECT 
    p.nombre, 
    SUM(dv.cantidad) AS total_unidades
FROM detalle_ventas AS dv
JOIN productos AS p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto
ORDER BY total_unidades DESC
LIMIT 1;

/*
EXPLICACIÓN:
Este código identifica el producto que más veces ha salido de nuestra bodega, independientemente de su precio.
- Utilizamos un JOIN para unir la tabla 'detalle_ventas' (donde se registra cuántas unidades se llevan los clientes) con la tabla 'productos' (para saber cómo se llama cada artículo).
- SUM(dv.cantidad) suma todas las unidades vendidas de cada producto individual.
- GROUP BY organiza los datos para que la suma se haga por cada producto por separado.
- ORDER BY total_unidades DESC y LIMIT 1 nos entregan únicamente el nombre del producto que ocupa el primer lugar en ventas.

¿POR QUÉ ES ÚTIL?
Es vital para la logística y el control de inventario. Un producto puede no ser el más caro, pero si es el que más se vende, es el que más rápido se agota. Esta información le dice al dueño del negocio qué artículos debe reponer con más frecuencia para no perder ventas por falta de stock.
*/