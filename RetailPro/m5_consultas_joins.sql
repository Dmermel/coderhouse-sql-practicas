-- Pre-entrega: Consultas con JOINs para el proyecto
-- Módulo 5
-- Base de datos: Ventas_Tech_DB
-- Motor utilizado: SQL Server

USE Ventas_Tech_DB;
GO

SELECT *
FROM ventas;


-- Consulta 1 - Vista base del proyecto

SELECT
    v.fecha_venta,
    c.id_cliente,
    c.nombre,
    c.ciudad,
    p.nombre_producto,
    cat.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta

FROM ventas                 AS v
INNER JOIN clientes         AS c
    ON v.id_cliente = c.id_cliente
INNER JOIN productos        AS p
    ON v.id_producto = p.id_producto
INNER JOIN categorias       AS cat
    ON p.id_categoria = cat.id_categoria;
-- Conclusión:
-- La vista consolidada permite analizar las ventas junto con información
-- del cliente, producto, categoría y ubicación.
-- Esto facilita detectar patrones de compra y segmentar resultados,
-- sirviendo como base para reportes comerciales y futuros dashboards en Power BI.


-- Consulta 2 - Clientes sin ventas

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes                AS c
LEFT JOIN ventas             AS v
    ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL;

-- Conclusión:
-- No se encontraron clientes registrados sin compras.
-- Esto indica que todos los clientes de la base tuvieron al menos una operación.
-- Como siguiente análisis, convendría comparar frecuencia y monto de compra
-- para identificar clientes de mayor valor y clientes con menor recurrencia.


-- Consulta 3 - Productos sin ventas

SELECT
    p.nombre_producto,
    cat.nombre_categoria,
    p.precio
FROM productos          AS p
INNER JOIN categorias   AS cat
    ON p.id_categoria = cat.id_categoria
LEFT JOIN ventas        AS v
    ON p.id_producto = v.id_producto
WHERE v.id_venta IS NULL;

-- Conclusión:
-- No se detectaron productos del catálogo sin ventas registradas.
-- Esto muestra que todos los productos tuvieron algún nivel de movimiento.
-- Como próximo paso, sería útil analizar unidades vendidas y facturación por producto
-- para identificar artículos de baja rotación y oportunidades de mejora comercial.


-- Consulta 4 - Consolidado por origen

-- Primer grupo: primera quincena
SELECT
    fecha_venta,
    cantidad * precio_unitario AS total,
    'Primera quincena' AS canal
FROM ventas
WHERE DAY(fecha_venta) <= 15;

-- Segundo grupo: segunda quincena
SELECT
    fecha_venta,
    cantidad * precio_unitario AS total,
    'Segunda quincena' AS canal
FROM ventas
WHERE DAY(fecha_venta) > 15;

SELECT
    canal,
    SUM(total) AS total_facturado
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Primera quincena' AS canal
    FROM ventas
    WHERE DAY(fecha_venta) <= 15

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Segunda quincena' AS canal
    FROM ventas
    WHERE DAY(fecha_venta) > 15
) AS ventas_por_origen
GROUP BY canal;

-- Conclusión:
-- La facturación registrada se concentra completamente en la primera quincena,
-- sin movimientos en la segunda mitad del período analizado.
-- Este resultado puede deberse a una falta de carga de datos o a una caída real de actividad.
-- Como siguiente análisis, se podría comparar cantidad de ventas, ticket promedio
-- y productos vendidos entre ambas quincenas para detectar en qué punto se genera la diferencia.

-- Si la caída fuera real, esta información podría servir para evaluar
-- promociones o acciones comerciales específicas durante la segunda quincena.