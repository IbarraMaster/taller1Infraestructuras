--¿Cuál es el paracaídas más caro que tenemos?
select * from productos order by precio desc limit 1; 

/*
EXPLICACIÓN:
Esta consulta se utiliza para identificar el producto con el valor más alto en todo el inventario.
- SELECT * nos permite ver toda la información disponible del producto (ID, nombre, categoría, etc.).
- ORDER BY precio DESC organiza toda la lista de productos empezando por el más costoso.
- LIMIT 1 funciona como un "corte", indicándole a la base de datos que, una vez organizada la lista, 
  solo nos entregue el primer registro (el más caro).

¿POR QUÉ ES ÚTIL?
Para el negocio, es vital saber cuál es su artículo de lujo o el producto que representa 
la mayor inversión individual en el catálogo. Esto ayuda en estrategias de marketing 
enfocadas en clientes de alto perfil.
*/