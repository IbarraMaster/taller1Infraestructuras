--  Identifica clientes que compraron SOLO paracaídas (nunca compraron accesorios). Muestra nombre y total gastado.

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY c.id_cliente
HAVING 
    SUM(CASE WHEN p.categoria = 'Paracaídas' THEN 1 ELSE 0 END) > 0  -- Que sí tenga paracaídas
    AND 
    SUM(CASE WHEN p.categoria = 'Accesorios' THEN 1 ELSE 0 END) = 0; -- Que tenga CERO accesorios

/*
EXPLICACIÓN:
Esta es una de las consultas más ingeniosas del taller, ya que utiliza una técnica llamada "agregación condicional" para filtrar perfiles específicos.
- Triple JOIN: Conecta clientes, ventas, detalles y productos para tener la foto completa de qué compró cada quién.
- SUM(CASE...): Aquí le pedimos a SQL que actúe como un contador inteligente. 
  1. Si el producto es 'Paracaídas', suma 1 punto. 
  2. Si es 'Accesorios', suma 1 punto en una cuenta aparte.
- HAVING: Es el filtro final. Solo nos muestra a las personas que tienen más de 0 puntos en paracaídas (compraron al menos uno) Y exactamente 0 puntos en accesorios (no compraron ninguno).

¿POR QUÉ ES ÚTIL?
Identifica un nicho de mercado muy específico: los clientes que solo necesitan el equipo técnico. 
Para el negocio, esto es una oportunidad de oro para hacer "Remarketing". Si sabemos que 
tienen el paracaídas pero no nos compraron accesorios, podemos enviarles una promoción 
específica de cascos, guantes o altímetros, ya que sabemos que son artículos que 
probablemente necesiten pero que aún no han adquirido con nosotros.
*/