--Muestra el nombre, correo y fecha de nacimiento de todos los clientes, ordenados
--alfabéticamente por nombre

select * from clientes order by nombre;

/*
EXPLICACIÓN:
Esta consulta genera un listado completo de nuestra base de datos de usuarios.
- Aunque el enunciado menciona campos específicos, el uso del asterisco (*) le indica 
  a SQL que traiga todas las columnas disponibles de la tabla 'clientes' (incluyendo 
  nombre, correo y fecha de nacimiento).
- ORDER BY nombre organiza a las personas por orden alfabético (de la A a la Z).

¿POR QUÉ ES ÚTIL?
Es el reporte de contacto básico. Mantener una lista organizada alfabéticamente 
facilita la búsqueda visual de clientes específicos y ayuda a los administradores 
de la tienda a tener una visión clara y estructurada de su base de datos.
*/