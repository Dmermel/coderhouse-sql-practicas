Ventas_Tech_DB

Práctica de SQL realizada en SQL Server para construir una base de datos relacional de ventas de una tienda de tecnología.

Estructura del modelo

La base de datos contiene cuatro tablas relacionadas:

categorias: categorías de los productos.

clientes: información básica de los clientes.

productos: productos disponibles y su categoría.

ventas: registro de las operaciones de venta.

Las relaciones principales son:

categorias 1 productos

clientes 1 ventas

productos 1 ventas

Contenido del script

El archivo ventas_tech_db.sql incluye:

Creación de la base Ventas_Tech_DB si todavía no existe.

Eliminación previa de las tablas con DROP TABLE IF EXISTS.

Creación de las tablas con sus claves primarias y foráneas.

Carga de datos iniciales con INSERT.

Consultas finales para validar que los datos se hayan cargado correctamente.

Cómo ejecutar el proyecto

Abrir SQL Server Management Studio (SSMS).

Conectarse a una instancia de SQL Server.

Abrir el archivo ventas_tech_db.sql.

Ejecutar el script completo con F5 o con el botón Ejecutar.

Actualizar el panel Bases de datos si es necesario.

Verificar que exista la base Ventas_Tech_DB.

Comprobar que se hayan creado las tablas categorias, clientes, productos y ventas.

El script puede ejecutarse nuevamente porque primero elimina las tablas existentes respetando el orden de las dependencias.

Validación esperada

Al finalizar:

categorias: 4 registros.

clientes: 5 registros.

productos: 6 registros.

ventas: 10 registros.

La consulta:

SELECT COUNT(*) AS cantidad_ventas
FROM ventas;

debe devolver 10.

Correcciones aplicadas

Se corrigieron los puntos señalados en la devolución:

Se eliminó la definición duplicada de la tabla productos.

Se eliminaron comandos de cierre sueltos que generaban errores de sintaxis.

Se unificó la indentación de las sentencias CREATE TABLE e INSERT.

Se agregó este archivo README.md con la descripción e instrucciones de ejecución.
