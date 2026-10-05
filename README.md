# Ventas_Tech_DB

Proyecto práctico de SQL realizado en SQL Server para crear y analizar una base de datos relacional de ventas de una tienda de tecnología.

## Objetivo

El objetivo del proyecto es trabajar con una base de datos de ventas desde su creación hasta la realización de consultas orientadas al análisis de información.

En una primera etapa se creó la estructura de la base de datos, definiendo tablas, relaciones, claves y restricciones.

Posteriormente se incorporaron consultas SQL para obtener información útil sobre ventas, productos y clientes, utilizando herramientas como `INNER JOIN`, `LEFT JOIN`, `GROUP BY`, `UNION ALL` y funciones de agregación.

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
