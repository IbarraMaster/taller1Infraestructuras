 -- Enlista todos los productos de "Accesorios" con precio menor a $500

select * from productos where categoria = 'Accesorios' and precio < 500;

/*
EXPLICACIÓN:
Este código funciona como un buscador de "artículos económicos" dentro de una sección específica de la tienda.
- Selecciona toda la información disponible de la tabla 'productos'.
- La clave aquí es el uso de la palabra AND, que actúa como un requisito doble: 
  1. El producto debe pertenecer obligatoriamente a la categoría 'Accesorios'.
  2. Al mismo tiempo, su precio debe ser menor a $500.
Si un producto cumple una cosa pero no la otra, no aparecerá en el reporte.

¿POR QUÉ ES ÚTIL?
Es una herramienta perfecta para crear secciones de "Impulso de Venta" o "Caja de Ofertas". 
Permite al negocio identificar productos baratos que los clientes podrían añadir 
fácilmente a su carrito sin pensarlo mucho, aumentando el ticket final.
*/