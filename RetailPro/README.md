
# RetailPro — Análisis de Ventas

## Descripción del proyecto

RetailPro es un proyecto académico de análisis de datos basado en las operaciones comerciales de una tienda de tecnología.

El trabajo comienza con la creación de una base de datos relacional en SQL Server y continúa con consultas orientadas al análisis de ventas, productos y clientes.

Posteriormente, se utilizan Power Query y Power BI para transformar los datos, construir un modelo relacional y desarrollar medidas DAX.

## Objetivo

Organizar y analizar la información comercial para obtener indicadores que ayuden a comprender el comportamiento de las ventas y respaldar la toma de decisiones.

## Herramientas utilizadas

- SQL Server: creación y consulta de la base de datos.
- SQL Server Management Studio (SSMS): ejecución y validación de consultas.
- Power Query: extracción y transformación de datos.
- Power BI: modelado de datos y análisis.
- DAX: creación de medidas e indicadores.
- ChatGPT: asistencia para documentación, revisión de SQL y análisis crítico de resultados.
- GitHub: almacenamiento y documentación del proyecto.

## Estructura de la base de datos

La base de datos se denomina `Ventas_Tech_DB` y contiene cuatro tablas principales:

- `categorias`: clasificación de productos.
- `clientes`: información de los compradores.
- `productos`: catálogo de artículos comercializados.
- `ventas`: operaciones realizadas.

Las relaciones permiten vincular cada venta con su cliente, producto y categoría.

## Consultas SQL del proyecto

### Módulo 4 — Análisis comercial

Archivo: `m4_consultas_negocio.sql`

Contiene consultas para analizar la facturación mensual, el ranking de productos y otros indicadores comerciales.

### Módulo 5 — Consultas relacionales

Archivo: `m5_consultas_joins.sql`

Incluye consultas con JOIN y UNION ALL para combinar información de distintas tablas y obtener resultados consolidados.


## Cómo ejecutar las consultas

Para reproducir las consultas del proyecto se necesita Microsoft SQL Server y SQL Server Management Studio (SSMS).

1. Abrir SSMS y conectarse a una instancia de SQL Server.
2. Verificar que exista la base de datos `Ventas_Tech_DB`.
3. Comprobar que las tablas `categorias`, `clientes`, `productos` y `ventas` estén creadas y contengan registros.
4. Abrir `m4_consultas_negocio.sql` para ejecutar las consultas de análisis comercial.
5. Abrir `m5_consultas_joins.sql` para ejecutar las consultas relacionales.
6. Seleccionar `Ventas_Tech_DB` como base activa y ejecutar cada consulta con F5.
7. Revisar los resultados y comprobar que las consultas se ejecuten sin errores.

**Importante:** los archivos M4 y M5 contienen consultas de análisis. No reemplazan los scripts de creación y carga de la base de datos.


## Integración con Power BI

Los datos del proyecto también se utilizan en Power BI.

Se trabajó con Power Query para preparar la información y con un modelo de datos que relaciona las tablas de clientes, productos, categorías y ventas.

Además, se incorporó una tabla calendario y medidas DAX para facilitar el análisis de indicadores comerciales.


## Uso de inteligencia artificial

Durante el Módulo 9 se utilizó ChatGPT como herramienta de apoyo para revisar consultas SQL, interpretar resultados comerciales y mejorar la documentación de RetailPro.

La utilización de IA se trabajó en tres etapas:

1. **Revisión SQL:** se analizó una consulta con INNER JOIN y se incorporaron identificadores de venta y producto para mejorar la trazabilidad.
2. **Análisis comercial:** se solicitaron tres hallazgos a partir de los resultados reales de las consultas del Módulo 4.
3. **Documentación:** se generó una propuesta de README y se realizaron correcciones para adaptarla al desarrollo real del proyecto.

Las consultas originales y las propuestas se ejecutaron en SQL Server. Se verificó que la consulta revisada mantuviera los 10 registros y que el importe total fuera de 6.444,00.

En el análisis comercial también se identificó una limitación: algunos hallazgos propuestos por la IA eran similares entre sí y no se contaba con información suficiente para evaluar rentabilidad o tendencias históricas.

Por ese motivo, las respuestas de ChatGPT se utilizaron como punto de partida, manteniendo la validación de datos y la interpretación comercial como responsabilidad del analista.


## Conclusión

El desarrollo de RetailPro permitió llevar una base de datos de ventas más allá de su estructura inicial y convertirla en una herramienta de análisis comercial. A lo largo del proyecto, se trabajó desde la creación y relación de las tablas en SQL Server hasta la transformación de los datos en Power Query y la construcción de un modelo analítico en Power BI.

Uno de los aspectos más interesantes fue comprobar cómo una misma información puede ofrecer distintas perspectivas del negocio. Por ejemplo, al analizar las ventas de marzo de 2024, se identificó que la Laptop Pro 15 concentró aproximadamente el 55,9% de la facturación, mientras que el Mouse Inalámbrico fue el producto con mayor cantidad de unidades vendidas. Esta diferencia demuestra que el volumen de ventas y la facturación no siempre evolucionan de la misma manera, y que analizar un solo indicador puede llevar a interpretaciones incompletas.

También quedó en evidencia la importancia de validar los resultados antes de obtener conclusiones. La información disponible permite identificar comportamientos comerciales, pero no alcanza por sí sola para determinar rentabilidad, tendencias de crecimiento o decisiones de inversión sin incorporar costos y períodos adicionales.

La incorporación de inteligencia artificial aportó una nueva instancia de revisión y documentación del trabajo. Sin embargo, su mayor utilidad estuvo en complementar el análisis, no en reemplazarlo: las sugerencias generadas debieron contrastarse con las consultas SQL y los resultados reales.

En definitiva, RetailPro no se limita a ejecutar consultas o construir indicadores. El proyecto busca desarrollar una forma de trabajo en la que los datos puedan transformarse en información comprensible, verificable y útil para fundamentar decisiones comerciales.
