-- Pre-entrega: Consultas SQL de negocio
-- Título: Extrayendo métricas clave con SQL
-- Base de datos: Ventas_Tech_DB
-- Motor utilizado: SQL Server


-- Consulta 1 - Resumen ejecutivo mensual

SELECT
    MONTH(fecha_venta) AS mes,
    SUM(cantidad * precio_unitario) AS total_facturado,
    COUNT(*) AS cantidad_pedidos,
    AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta)
ORDER BY mes;


-- Consulta 2 - Ranking de productos

SELECT TOP 5
    id_producto,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS total_generado
FROM ventas
GROUP BY id_producto
ORDER BY total_generado DESC;


-- Consulta 3 - Clientes recurrentes

SELECT
    id_cliente,
    COUNT(*) AS cantidad_pedidos,
    SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY total_gastado DESC;


-- Consulta 4 - Meses por encima/por debajo del promedio

SELECT
    mes,
    total_facturado,
    CASE
        WHEN total_facturado > AVG(total_facturado) OVER () THEN 'Por encima'
        WHEN total_facturado < AVG(total_facturado) OVER () THEN 'Por debajo'
        ELSE 'Igual al promedio'
    END AS comparacion_promedio
FROM (
    SELECT
        MONTH(fecha_venta) AS mes,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY MONTH(fecha_venta)
) AS ventas_mensuales
ORDER BY mes;


-- Nota:
-- La base de datos creada en M3 contiene ventas únicamente correspondientes
-- al mes de marzo. Por este motivo, el total mensual coincide con el
-- promedio mensual general.


-- Hallazgos

-- 1. Durante marzo se realizaron 10 pedidos, con una facturación
-- total de $6.444 y un ticket promedio de $644,40.

-- 2. El producto 1 fue el que generó mayor facturación, con $3.600,
-- a pesar de haber vendido solamente 3 unidades.

-- 3. Todos los clientes realizaron más de un pedido. El cliente 1
-- fue el que registró el mayor gasto total, con $2.640.
