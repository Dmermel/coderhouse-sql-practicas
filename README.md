# Ventas_Tech_DB

Proyecto práctico de SQL realizado en SQL Server para crear una base de datos relacional de ventas de una tienda de tecnología.

## Objetivo

El objetivo de esta práctica es construir una base de datos desde cero, definiendo correctamente las tablas, sus relaciones y las restricciones necesarias para mantener la integridad de los datos.

También se realiza una carga inicial de información para poder utilizar la base en futuras consultas y análisis.

## Estructura de la base de datos

La base está compuesta por cuatro tablas:

- `categorias`: contiene las distintas categorías de productos.
- `clientes`: almacena los datos principales de los clientes.
- `productos`: contiene los productos disponibles y su categoría correspondiente.
- `ventas`: registra las operaciones de venta realizadas.

Las relaciones principales son:

- Una categoría puede tener varios productos.
- Un cliente puede realizar varias ventas.
- Un producto puede aparecer en varias ventas.

El modelo puede representarse de la siguiente forma:

```text
categorias (1) ──── (N) productos (1) ──── (N) ventas (N) ──── (1) clientes
```

## Contenido del script

El archivo `ventas_tech_db.sql` incluye:

1. Creación de la base de datos `Ventas_Tech_DB`.
2. Eliminación de tablas existentes con `DROP TABLE IF EXISTS`.
3. Creación de las tablas `categorias`, `clientes`, `productos` y `ventas`.
4. Definición de claves primarias y claves foráneas.
5. Uso de restricciones como `NOT NULL`, `UNIQUE` y valores `DEFAULT`.
6. Carga de datos iniciales mediante `INSERT INTO`.
7. Consultas de validación para comprobar que la información se cargó correctamente.

## Cómo ejecutar el script

1. Abrir SQL Server Management Studio.
2. Conectarse al servidor de SQL Server.
3. Abrir el archivo `ventas_tech_db.sql`.
4. Ejecutar el script completo con `F5` o con el botón **Ejecutar**.
5. Actualizar el panel de bases de datos si es necesario.
6. Verificar que se haya creado la base `Ventas_Tech_DB` con sus cuatro tablas.

El script está preparado para poder ejecutarse nuevamente, ya que primero elimina las tablas existentes respetando el orden de sus dependencias.

## Datos cargados

La carga inicial contiene:

- 4 categorías.
- 5 clientes.
- 6 productos.
- 10 ventas.

Para comprobar la cantidad de ventas se puede ejecutar:

```sql
SELECT COUNT(*) AS cantidad_ventas
FROM ventas;
```

El resultado esperado es:

```text
10
```

## Tecnologías utilizadas

- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub
