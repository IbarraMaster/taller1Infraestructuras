--  ¿Cuál es el cliente que compró la mayor variedad de productos diferentes (no cantidad, sino tipos distintos)?

SELECT 
    c.nombre, 
    COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas AS dv ON v.id_venta = dv.id_venta
GROUP BY c.id_cliente
ORDER BY variedad_productos DESC
LIMIT 1;

/*
EXPLICACIÓN:
Esta consulta identifica al cliente que ha explorado la mayor diversidad de nuestro catálogo.
- Doble JOIN: Es una consulta más avanzada porque conecta tres tablas. Pasamos de 'clientes' a 
  'ventas' y luego a 'detalle_ventas' para llegar hasta los productos específicos.
- COUNT(DISTINCT id_producto): Esta es la clave. La función DISTINCT asegura que, si un cliente 
  compró el mismo paracaídas tres veces, SQL solo lo cuente como "1 tipo de producto".
- GROUP BY: Agrupa toda la actividad bajo el nombre de cada cliente.
- LIMIT 1: Nos muestra únicamente al ganador del título de "cliente con mayor variedad".

¿POR QUÉ ES ÚTIL?
Para el negocio, este es un perfil de "Entusiasta". Es un cliente que conoce bien nuestras 
diferentes líneas de productos (paracaídas, accesorios, drones, etc.). Identificarlo es 
útil para pedirle testimonios, reseñas de productos nuevos o enviarle encuestas de 
satisfacción, ya que su opinión cubre muchas áreas de la tienda.
*/