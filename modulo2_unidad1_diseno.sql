-- TABLA CLIENTES
-- Esta tabla almacena la información básica de los clientes.

CREATE TABLE Clientes(
    -- INT porque el identificador del cliente es un número entero.
    -- NOT NULL porque cada cliente debe tener un identificador.
    id_cliente INT NOT NULL,

    -- VARCHAR(100) porque el nombre es un dato de texto
    -- y se limita a un máximo de 100 caracteres.
    nombre VARCHAR(100) NOT NULL,

    -- VARCHAR(500) porque permite guardar una breve biografía o notas
    -- sin utilizar un campo de texto de tamaño ilimitado.
    perfil_bio VARCHAR(500) NOT NULL,

    -- DATE porque solamente necesitamos guardar la fecha de registro,
    -- sin almacenar hora.
    fecha_registro DATE NOT NULL
);


-- TABLA PRODUCTOS
-- Esta tabla almacena la información básica de los productos.

CREATE TABLE Productos(
    -- INT porque el identificador del producto es un número entero.
    -- NOT NULL porque cada producto debe tener un identificador.
    id_producto INT NOT NULL,

    -- VARCHAR(255) porque la descripción es un dato de texto
    -- y puede contener hasta 255 caracteres.
    descripcion VARCHAR(255) NOT NULL,

    -- DECIMAL(10,2) porque el precio necesita almacenarse
    -- de forma exacta, con hasta 10 dígitos totales y 2 decimales.
    precio DECIMAL(10,2) NOT NULL,

    -- INT porque podemos representar el estado del producto
    -- utilizando 1 para activo y 0 para inactivo.
    esta_activo INT NOT NULL
);