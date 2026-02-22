Taller SQL: El Último Salto 
Este repositorio contiene la solución integral al taller práctico de SQL para la tienda "El Último Salto", ubicada en Pasto, Nariño. El proyecto utiliza una base de datos con más de 1,000 transacciones para generar reportes de inteligencia de negocios y comportamiento del consumidor.

Herramientas y Requisitos
Para visualizar y ejecutar este proyecto, es necesario contar con:

Visual Studio Code: Como editor de texto principal.

Extensiones de VS Code (Instalación obligatoria):

SQLite (de alexcvzz): Para ejecutar las consultas y conectarse a la base de datos.

SQLite Viewer (de qwtel): Para visualizar las tablas de forma gráfica.

Guía de Ejecución (Paso a Paso)
Sigue estas instrucciones para correr los scripts correctamente:

Abrir el Proyecto: Abre la carpeta raíz en Visual Studio Code.

Ver la Base de Datos: Haz clic en el archivo tienda.db. Se abrirá una pestaña con el visor de tablas.

Preparar la Consulta: Abre cualquier archivo .sql de la carpeta de ejercicios.

Ejecutar el Código:

Usa el cursor para seleccionar todo el bloque de código que deseas ejecutar.

Opción A: Haz clic derecho sobre el texto seleccionado y elige "Run Query".

Opción B: Presiona el atajo de teclado Ctrl + Shift + Q.

Vincular la Base de Datos: En la parte superior de VS Code se abrirá una lista desplegable; debes seleccionar el archivo tienda.db para que la consulta se ejecute sobre los datos del taller.

Reglas de Negocio y Supuestos
Cupón ULTIMO_SUSPIRO: Aplica un 30% de descuento. El análisis incluye proyecciones de ingresos brutos vs. ingresos con descuento.

Segmentación Demográfica: Las edades se calculan dinámicamente comparando el año actual con la columna fecha_nacimiento.

Estado de Riesgo: Se considera "cliente de riesgo" a aquel que no ha realizado compras en los últimos 180 días.

Estructura del Repositorio
sql/: Contiene los archivos .sql con las soluciones comentadas.

tienda.db: Base de datos SQLite normalizada.

README.md: Documentación y manual de uso.

Autor: Juan Sebastian Ibarra Hormaza

Contacto: ibarrahormaza18@gmail.com

Asunto: Taller 1 - Infraestructura para el análisis de grandes conjuntos de datos