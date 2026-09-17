
CREATE TABLE clientes (
 id_clientes INTEGER PRIMARY KEY,
 nombre VARCHAR(150),
 email VARCHAR(150),
 ciudad VARCHAR(100),
 segmento VARCHAR(50),
 fecha_registro DATE
);

CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY,
    nombre_producto VARCHAR(150),
    categoria VARCHAR(100),
    subcategoria VARCHAR(100),
    precio NUMERIC(12,2),
    costo NUMERIC(12,2)
);

CREATE TABLE territorios (
    id_territorio INTEGER PRIMARY KEY,
    region VARCHAR(100),
    pais VARCHAR(100),
    zona VARCHAR(100)
);

CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY,
    fecha_venta DATE,

    id_cliente INTEGER,
    id_producto INTEGER,
    id_territorio INTEGER,

    cantidad INTEGER,
    total_venta NUMERIC(12,2),
    canal VARCHAR(50),

    fecha_prometida DATE,
    fecha_despacho DATE,
    fecha_entrega DATE,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto),

    FOREIGN KEY (id_territorio)
        REFERENCES territorios(id_territorio)
);

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS territorios;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nombre VARCHAR(150),
    email VARCHAR(150),
    ciudad VARCHAR(100),
    segmento VARCHAR(50),
    fecha_registro DATE
);

CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY,
    nombre_producto VARCHAR(150),
    categoria VARCHAR(100),
    subcategoria VARCHAR(100),
    precio NUMERIC(12,2),
    costo NUMERIC(12,2)
);

CREATE TABLE territorios (
    id_territorio INTEGER PRIMARY KEY,
    region VARCHAR(100),
    pais VARCHAR(100),
    zona VARCHAR(100)
);

CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY,
    fecha_venta DATE,

    id_cliente INTEGER,
    id_producto INTEGER,
    id_territorio INTEGER,

    cantidad INTEGER,
    total_venta NUMERIC(12,2),
    canal VARCHAR(50),

    fecha_prometida DATE,
    fecha_despacho DATE,
    fecha_entrega DATE,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto),

    FOREIGN KEY (id_territorio)
        REFERENCES territorios(id_territorio)
);

DROP TABLE IF EXISTS ventas;

CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY,
    fecha_venta DATE,

    id_cliente INTEGER,
    id_producto INTEGER,
    id_territorio INTEGER,

    cantidad INTEGER,
    total_venta NUMERIC(12,2),
    canal VARCHAR(50),

    fecha_prometida DATE,
    fecha_despacho DATE,
    fecha_entrega DATE,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto),

    FOREIGN KEY (id_territorio)
        REFERENCES territorios(id_territorio)
);

FOREIGN KEY (id_cliente)
REFERENCES clientes(id_cliente)

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS territorios;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nombre VARCHAR(150),
    email VARCHAR(150),
    ciudad VARCHAR(100),
    segmento VARCHAR(50),
    fecha_registro DATE
);

CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY,
    nombre_producto VARCHAR(150),
    categoria VARCHAR(100),
    subcategoria VARCHAR(100),
    precio NUMERIC(12,2),
    costo NUMERIC(12,2)
);

CREATE TABLE territorios (
    id_territorio INTEGER PRIMARY KEY,
    region VARCHAR(100),
    pais VARCHAR(100),
    zona VARCHAR(100)
);

CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY,
    fecha_venta DATE,

    id_cliente INTEGER,
    id_producto INTEGER,
    id_territorio INTEGER,

    cantidad INTEGER,
    total_venta NUMERIC(12,2),
    canal VARCHAR(50),

    fecha_prometida DATE,
    fecha_despacho DATE,
    fecha_entrega DATE,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto),

    FOREIGN KEY (id_territorio)
        REFERENCES territorios(id_territorio)
);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;