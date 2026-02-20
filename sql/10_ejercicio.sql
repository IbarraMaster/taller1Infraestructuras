--  Muestra todos los clientes de género "F" (femenino) ordenados por fecha de
--  nacimiento (más viejitas primero).
select * from clientes where genero = 'F' order by fecha_nacimiento ASC; 