--¿Cuál es el accesorio más barato disponible?
select nombre, min(precio) from productos where categoria = 'Accesorios' ;
--El accesorio más barato disponible es el "Paracaídas de emergencia" con un precio de $150.