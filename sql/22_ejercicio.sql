-- Crea una clasificación de clientes por nivel de gasto:
--  "Alto Valor" si gastó más de $5,000
--  "Medio Valor" si gastó entre $2,000 y $5,000
--  "Bajo Valor" si gastó menos de $2,000
--  Muestra nombre, categoría de gasto y total gastado.

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado,
    CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) >= 2000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS categoria_gasto
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY total_gastado DESC;

/*
EXPLICACIÓN:
Este código actúa como un motor de clasificación que organiza a nuestros clientes en tres niveles según su importancia económica para la tienda.
- CASE: Es el corazón de la consulta. Funciona como un semáforo de reglas: 
  1. Si el total supera los $5,000, le pone la etiqueta de 'Alto Valor'.
  2. Si está entre $2,000 y $5,000, lo marca como 'Medio Valor'.
  3. Si es menor a eso, lo etiqueta como 'Bajo Valor'.
- JOIN y SUM: Como en reportes anteriores, unimos las tablas y sumamos todas las compras de cada persona.
- ORDER BY: Organiza la lista para que los clientes más importantes aparezcan en la parte superior.

¿POR QUÉ ES ÚTIL?
Es la base para un programa de fidelización o "Club VIP". Permite que la empresa no trate a todos los clientes por igual: a los de 'Alto Valor' se les pueden dar beneficios exclusivos, mientras que a los de 'Bajo Valor' se les pueden enviar promociones más agresivas para incentivarlos a comprar más.
*/