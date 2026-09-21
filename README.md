# Práctica SQL - Filtros y funciones de agregación

En esta práctica trabajé con consultas SQL aplicando filtros, operadores lógicos, agrupaciones y funciones de agregación.

El objetivo fue entender cómo seleccionar información específica de una tabla y cómo resumir datos para obtener resultados útiles para un análisis.

## Operadores de filtrado

Para filtrar registros se utiliza `WHERE`.

Por ejemplo, si queremos obtener solamente los productos cuyo precio sea mayor a 1000:

```sql
SELECT *
FROM productos
WHERE precio > 1000;
```

También se pueden combinar varias condiciones utilizando operadores como `AND`, `OR` y `NOT`.

Por ejemplo:

```sql
SELECT *
FROM ventas
WHERE categoria = 'Computación'
AND total_venta > 1000;
```

En este caso deben cumplirse las dos condiciones.

## Operador IN

El operador `IN` permite buscar varios valores posibles dentro de una misma columna sin tener que escribir varios `OR`.

Por ejemplo:

```sql
SELECT *
FROM ventas
WHERE categoria IN ('Computación', 'Accesorios', 'Audio');
```

Esto permite obtener las ventas que pertenezcan a cualquiera de esas tres categorías de una forma más simple y legible.

## GROUP BY

`GROUP BY` permite agrupar registros que tienen un mismo valor.

Por ejemplo, si queremos saber cuántos pedidos realizó cada cliente:

```sql
SELECT
    cliente_id,
    COUNT(*) AS cantidad_pedidos
FROM pedidos
GROUP BY cliente_id;
```

En este caso, `GROUP BY cliente_id` genera un grupo por cada cliente y `COUNT(*)` cuenta cuántos pedidos tiene cada uno.

El alias `AS cantidad_pedidos` se utiliza para que el resultado tenga un nombre más fácil de interpretar.

## Funciones de agregación

Las funciones de agregación permiten realizar cálculos sobre varios registros.

Algunas de las principales son:

- `COUNT()` para contar registros.
- `SUM()` para sumar valores.
- `AVG()` para obtener un promedio.
- `MIN()` para obtener el valor mínimo.
- `MAX()` para obtener el valor máximo.

Por ejemplo:

```sql
SELECT
    cliente_id,
    SUM(total_pagado) AS total_cliente
FROM pedidos
GROUP BY cliente_id;
```

Esta consulta muestra cuánto dinero pagó en total cada cliente.

## Diferencia entre WHERE y HAVING

`WHERE` y `HAVING` sirven para filtrar información, pero se utilizan en momentos diferentes de la consulta.

`WHERE` filtra los registros antes de realizar una agrupación.

Por ejemplo:

```sql
SELECT *
FROM pedidos
WHERE total_pagado > 500;
```

En cambio, `HAVING` se utiliza para filtrar los resultados obtenidos después de aplicar `GROUP BY`.

Por ejemplo, si queremos conocer solamente los clientes cuyo total de compras supera los 1000:

```sql
SELECT
    cliente_id,
    SUM(total_pagado) AS total_cliente
FROM pedidos
GROUP BY cliente_id
HAVING SUM(total_pagado) > 1000;
```

No sería correcto utilizar:

```sql
WHERE SUM(total_pagado) > 1000
```

porque `WHERE` se ejecuta antes de que SQL realice la agrupación y calcule el `SUM()`.

Una forma sencilla de recordarlo es:

- `WHERE` filtra registros.
- `GROUP BY` agrupa registros.
- Las funciones como `SUM()` o `COUNT()` realizan cálculos sobre esos grupos.
- `HAVING` filtra los grupos obtenidos.

## Conclusión

Esta práctica me permitió entender mejor cómo filtrar información y cómo resumir conjuntos de datos utilizando SQL.

También pude diferenciar el uso de `WHERE` y `HAVING`, y comprender cómo combinar `GROUP BY` con funciones como `COUNT()` y `SUM()` para obtener información útil a partir de varias filas.
