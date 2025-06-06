-- Active: 1749208517795@@127.0.0.1@3307@examen
DROP DATABASE examen;
CREATE DATABASE examen;
USE examen;

CREATE TABLE clientes (
    cliente_id     INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(50)    NOT NULL,
    email          VARCHAR(50)    NOT NULL UNIQUE,
    telefono       VARCHAR(15),
    direccion      VARCHAR(100),
    fecha_registro DATE NOT NULL DEFAULT (CURRENT_DATE)
);
CREATE TABLE productos (
    productos_id INT AUTO_INCREMENT PRIMARY KEY,
    tamaño ENUM('grandes','medianas','pequeñas') NOT NULL,
    precio DECIMAL(10,2)  NOT NULL  DEFAULT 0.00,
    producto ENUM('pizza', 'bebida') NOT NULL,
    ingredientes ENUM('cebollin','pepino','queso','carne','ninguno') NOT NULL DEFAULT 'ninguno',
    combo ENUM('pizza/bebida','NoCombo') NOT NULL DEFAULT 'NoCombo'
);

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id    INT NOT NULL,
    fecha_recogida  DATETIME NOT NULL,
    ingredientesExtras ENUM('peperoni','pollo','ninguno') NOT NULL DEFAULT 'ninguno',
    CONSTRAINT fk_pedidos_clientes
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(cliente_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    INDEX idx_pedidos_fecha (fecha_recogida)
)

CREATE TABLE detalles_pedidos (
    detalle_id      INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id       INT NOT NULL,
    productos_id     INT NOT NULL,
    cantidad        INT NOT NULL     DEFAULT 1,
    precio_unitario DECIMAL(10,2) NOT NULL,
    --
    CONSTRAINT fk_detalles_ped_pedidos
        FOREIGN KEY (pedido_id)
        REFERENCES pedidos(pedido_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_detalles_ped_productos
        FOREIGN KEY (productos_id)
        REFERENCES productos(productos_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    INDEX idx_detalles_pedidos (pedido_id),
    INDEX idx_detalles_producto (productos_id)
); 

CREATE TABLE ingredientes (
    ingrediente_id  INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id       INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT fk_ingredientes
        FOREIGN KEY (pedido_id)
        REFERENCES pedidos(pedido_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)

CREATE TABLE productos_pedidos(
    productos_pedidos  INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT NOT NULL,
    productos_id INT NOT NULL,
    producto VARCHAR(50) NOT NULL,
    CONSTRAINT fk_productos_pedidos_pedidos
        FOREIGN KEY (pedido_id)
        REFERENCES pedidos(pedido_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT fk_productos_pedidos_producto
        FOREIGN KEY (productos_id)
        REFERENCES productos(productos_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)

CREATE TABLE ingredientes_adicionales(
    ingredienteAdicionales_id  INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id       INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT fk_ingredientes_adicionales
        FOREIGN KEY (pedido_id)
        REFERENCES pedidos(pedido_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)