--  ¿Cuántos productos tenemos en la categoría "Paracaídas"?
select count(categoria) from productos where categoria = 'Paracaídas';

/*
EXPLICACIÓN:
Esta consulta cuenta cuántos artículos diferentes pertenecen específicamente al grupo de "Paracaídas".
- Utiliza la función COUNT(categoria) para sumar cada vez que aparece un producto en esa categoría.
- El filtro WHERE asegura que SQL ignore los accesorios, drones u otros artículos, 
  enfocándose únicamente en los paracaídas.

¿POR QUÉ ES ÚTIL?
Para un negocio especializado como "El Último Salto", es fundamental saber qué tan 
amplio es su catálogo de productos estrella. Este dato ayuda a entender si tenemos 
suficiente variedad para diferentes perfiles de clientes o si necesitamos buscar 
nuevos proveedores para ampliar la oferta.
*/