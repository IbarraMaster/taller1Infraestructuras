--  Muestra todos los clientes de género "F" (femenino) ordenados por fecha de
--  nacimiento (más viejitas primero).

select * from clientes where genero = 'F' order by fecha_nacimiento ASC; 

/*
EXPLICACIÓN:
Esta consulta realiza una segmentación específica basada en el perfil del usuario y su edad.
- El filtro WHERE genero = 'F' selecciona únicamente a las mujeres registradas en la base de datos.
- La instrucción ORDER BY fecha_nacimiento ASC organiza los resultados cronológicamente. 
  En el manejo de fechas, el orden "ascendente" (ASC) coloca las fechas más antiguas primero, 
  lo que nos permite ver a las clientas de mayor edad al inicio de la lista.

¿POR QUÉ ES ÚTIL?
Es una herramienta clave para el marketing dirigido. Si la tienda decide lanzar una 
promoción especial, por ejemplo, para el día de la madre o para un grupo de edad 
avanzada (senior), este reporte entrega exactamente la lista de contactos necesaria 
priorizando a las clientas con más años.
*/