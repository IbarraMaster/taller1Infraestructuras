--Enlista todos los productos de la categoría "Paracaídas" con sus precios, ordenados de mayor a menor precio

SELECT nombre, categoria, precio FROM productos where categoria = 'Paracaídas' 
order by precio desc;

/*
EXPLICACIÓN:
Esta consulta funciona como un filtro especializado para nuestro catálogo de productos.
- Selecciona el nombre, la categoría y el precio de la tabla 'productos'.
- La instrucción WHERE actúa como un "colador", permitiendo ver únicamente los artículos 
  que pertenecen a la categoría 'Paracaídas'.
- ORDER BY precio DESC organiza los resultados de forma descendente, es decir, del 
  más caro al más barato.

¿POR QUÉ ES ÚTIL?
Es fundamental para el equipo de ventas, ya que permite identificar rápidamente 
cuáles son nuestros productos de alta gama (Premium) y cuáles son las opciones 
más económicas dentro de la categoría principal.
*/