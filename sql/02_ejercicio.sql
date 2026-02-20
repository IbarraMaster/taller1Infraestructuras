--Enlista todos los productos de la categoría "Paracaídas" con sus precios, ordenados de mayor a menor precio
SELECT nombre, categoria, precio FROM productos where categoria = 'Paracaídas' 
order by precio desc;
--Se pueden observar los productos de la categoría "Paracaídas" con sus precios ordenados de mayor a menor precio.