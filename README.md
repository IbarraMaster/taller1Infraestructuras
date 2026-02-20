# Taller SQL: El Último Salto

Este repositorio contiene la solución al taller práctico de SQL para la tienda "El Último Salto", especializada en paracaidismo y deportes extremos en Pasto, Nariño. El objetivo del proyecto es analizar una base de datos normalizada con más de 1,000 transacciones para extraer métricas de negocio y comportamiento de clientes.

## Herramientas Utilizadas
* **Visual Studio Code**: Entorno de desarrollo para la escritura y organización de los scripts.
* **SQLite**: Motor de base de datos utilizado para la gestión de datos y ejecución de consultas (queries).
* **SQLite Viewer**: Extensión de VS Code empleada para visualizar las tablas de la base de datos y validar los resultados de forma gráfica.
* **Git y GitHub**: Herramientas para el control de versiones y la gestión del entregable en un repositorio público.

## Estructura del Repositorio
* **Ejercicios**: Cada solución se encuentra en la carpeta sql y en su respectivo archivo siguiendo el formato `XX_ejercicio.sql`.
* **Base de Datos**: Las consultas están diseñadas para ser ejecutadas directamente contra el archivo `tienda.db`.
* **Documentación**: Se han incluido comentarios explicativos en el código para detallar la lógica en soluciones complejas.

## Instrucciones de Ejecución
1. Abrir la carpeta del proyecto en Visual Studio Code.
2. Asegurarse de tener instalada la extensión SQLite Viewer y SQLite.
3. Abrir el archivo de la base de datos `tienda.db`.
4. Abrir el archivo `.sql` correspondiente al ejercicio que desea consultar.
5. Seleccionar el código SQL con el cursos, hacer clic derecho y elegir la opción "Run Query".

## Supuestos y Consideraciones
* **Cupón ULTIMO_SUSPIRO**: Se interpreta como un descuento del 30% aplicado sobre el precio original para los clientes seleccionados.
* **Criterios Temporales**: Los análisis realizados para el año 2025 se filtran mediante la columna `fecha_venta`.
* **Cálculo de Edad**: Para los ejercicios que requieren segmentación demográfica, se utiliza la diferencia entre la fecha actual y la fecha de nacimiento.

---
**Autor**: Juan Sebastian Ibarra Hormaza
**Contacto**: ibarrahormaza18@gmail.com
**Asunto**: Taller 1 - Tecnologías y herramientas de almacenamiento y procesamiento de datos masivos