--  ¿Cuántos productos tenemos en la categoría "Paracaídas"?
select * from ventas where fecha_venta >= '2025-01-01' AND fecha_venta <= '2025-12-31' ORDER BY fecha_venta DESC; 
--Tenemos 5 productos en la categoría "Paracaídas".