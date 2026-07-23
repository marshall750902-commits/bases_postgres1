CREATE DATABASE productos;

CREATE TABLE proveedores (
    NIF VARCHAR(100) PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL, 
    direccion VARCHAR(150) NOT NULL
);

ALTER TABLE proveedores ALTER COLUMN direccion TYPE VARCHAR(200);



);CREATE TABLE productos (
    codigo SERIAL PRIMARY KEY,
    precio_unitario NUMERIC(10, 2),
    nombre VARCHAR(100),
    NIF_proveedor VARCHAR(100),
    FOREIGN KEY (NIF_proveedor) REFERENCES proveedores(NIF)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    direccion VARCHAR(150),
    fecha_nacimiento DATE
);

CREATE TABLE adquiere (
    id SERIAL PRIMARY KEY,
    codigo_producto INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
