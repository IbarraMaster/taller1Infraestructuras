-- Enlista todos los clientes mayores de 60 años que han hecho compras, mostrando nombre, edad aproximada y total gastado

SELECT 
    c.nombre, 
    (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) AS edad_aproximada,
    SUM(v.total_venta) AS total_gastado
FROM clientes AS c
JOIN ventas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad_aproximada > 60
ORDER BY edad_aproximada DESC;

/*
EXPLICACIÓN:
Este código identifica a nuestro segmento de clientes "Senior" (mayores de 60 años) y calcula cuánto han invertido en total en la tienda.
- Cálculo de Edad: Restamos el año actual del año de nacimiento del cliente para obtener una edad estimada.
- JOIN y SUM: Conectamos la tabla de clientes con la de ventas para sumar (SUM) el valor de todas las compras realizadas por cada persona.
- HAVING: Esta es la parte clave. Usamos HAVING en lugar de WHERE porque estamos filtrando un resultado que acabamos de calcular (la edad aproximada) después de haber agrupado a los clientes.
- ORDER BY: Organiza la lista para que aparezcan primero las personas de mayor edad.

¿POR QUÉ ES ÚTIL?
Para "El Último Salto", este grupo es estratégico, especialmente por campañas como el cupón "ULTIMO_SUSPIRO". Este reporte permite saber si los adultos mayores están respondiendo bien a los incentivos y si representan un volumen de ingresos significativo para el negocio.
*/