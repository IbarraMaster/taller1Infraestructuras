--¿Cuál es el accesorio más barato disponible?
select nombre, min(precio) from productos where categoria = 'Accesorios' ;

/*
EXPLICACIÓN:
Este código busca específicamente el artículo con el precio más bajo dentro de una categoría.
- Utiliza la función MIN(precio), que recorre la columna de precios y selecciona el valor más pequeño encontrado.
- El filtro WHERE categoria = 'Accesorios' limita la búsqueda únicamente a ese grupo de productos, 
  asegurando que no se mezcle con paracaídas o drones.
- Al incluir 'nombre' en el SELECT, SQL nos muestra a qué producto corresponde ese precio mínimo.

¿POR QUÉ ES ÚTIL?
Es ideal para estrategias de "venta cruzada" (cross-selling). Conocer el accesorio más barato 
permite a la tienda ofrecerlo como un "añadido" sugerido cuando un cliente está por finalizar 
su compra, ya que su bajo costo reduce la resistencia del cliente a gastar un poco más.
*/