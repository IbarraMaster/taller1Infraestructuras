Taller SQL – El Último Salto

Repositorio de la solución del Taller SQL práctico de "El Último Salto", una tienda especializada en paracaidismo y deportes extremos ubicada en Pasto, Nariño.  
El objetivo es responder 30 preguntas de negocio usando consultas SQL ejecutadas sobre la base de datos `tienda.db`.

Estructura del repositorio

    - `tienda.db`: Base de datos SQLite proporcionada por el docente, usada solo en modo lectura (consultas SELECT). 

    - `sql/`: Carpeta con las soluciones de los ejercicios. Un archivo por ejercicio, cada uno contiene una consulta ejecutable directamente contra `tienda.db`. 

    - `README.md`: Este archivo, con la documentación de uso del taller. 

Requisitos

Para ejecutar las consultas se requiere:

    - Visual Studio Code instalado.  
    - Una extensión de Visual Studio Code para trabajar con SQLite (por ejemplo, “SQLite Viewer” u otra similar que permita abrir archivos `.db` y ejecutar consultas SQL). 

    No es necesario instalar SQLite por separado ni modificar la base de datos; las consultas trabajan únicamente con los datos existentes en `tienda.db`.

Cómo ejecutar las consultas (VS Code + extensión SQLite)

    1. Descargar o clonar este repositorio y abrir la carpeta `taller1Infraestructuras` en Visual Studio Code.
    2. Asegurarse de tener instalada la extensión de SQLite en Visual Studio Code.
    3. Con la extensión de SQLite:  
        - Abrir el archivo `tienda.db`.  
        - Visualizar las tablas disponibles (clientes, productos, ventas, detalle_ventas, etc.).  
    4. Para cada ejercicio:  
        - Abrir el archivo correspondiente, por ejemplo `sql/01_ejercicio.sql`.  
        - Ejecutar la consulta de ese archivo contra `tienda.db` usando la extensión de SQLite.  

    Cada archivo `XX_ejercicio.sql` responde a la pregunta de negocio indicada en su comentario inicial y es ejecutable directamente sobre `tienda.db`. 

Supuestos y consideraciones

    - Todas las soluciones están implementadas únicamente con consultas SELECT, sin realizar modificaciones sobre los datos (no se utilizan INSERT, UPDATE ni DELETE 
    - Se usan funciones estándar de SQLite para manejo de fechas y textos, por ejemplo:  
        -`strftime('%Y', fecha_venta)` para obtener el año de una venta (ejercicios relacionados con el año 2025 y con meses).   
        -`DATE('now', '-180 days')` para identificar clientes cuya última compra fue hace más de 180 días (reporte de “clientes de riesgo”).   
    - El cálculo de edades y rangos de edad se realiza usando la fecha de nacimiento del cliente y funciones de fecha de SQLite, tal como se sugiere en el enunciado del taller.   
    - El cupón `ULTIMO_SUSPIRO` aplica un 30 % de descuento; cuando es necesario, se calcula el valor original aproximado a partir del monto con descuento usando la fórmula indicada en el taller.   

Autor

- Nombre: Sebastian Ibarra  
- Correo: jsibarra.2678@unicesmag.edu.co  
- Asignatura: Infraestructura para el análisis de grandes conjuntos de datos
- Taller: CESMAG – Entrega 1 (Taller SQL – El Último Salto)   

Cualquier persona con acceso a este repositorio puede abrir `tienda.db`, ejecutar los archivos en `sql/` y verificar los resultados de cada ejercicio.   