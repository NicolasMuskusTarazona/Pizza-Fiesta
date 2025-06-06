-- Active: 1749208517795@@127.0.0.1@3307@examen

-- 1. **Registrar un nuevo cliente:**

INSERT INTO clientes(nombre,email,direccion,telefono,fecha_registro) VALUES
('Yojana Tarazona','yojanatarazona@gmail.com','CALLE 61#22 C 45','+57 31927330605','2025-02-15');

-- 2. **Agregar un nuevo producto (pizza) al menú:**
INSERT INTO productos(producto,tamaño,precio,ingredientes,combo) VALUES
('pizza','grandes',15,'ninguno','NoCombo');

-- 3. **Registrar una bebida en el menú:**

INSERT INTO productos(producto,tamaño,precio,ingredientes,combo) VALUES
('bebida','pequeñas',5,'ninguno','NoCombo');

-- 4. **Agregar un ingrediente a la base de datos:**
INSERT INTO ingredientes(pedido_id,nombre) VALUES
(8,'camarones')


-- 5. **Crear un pedido para un cliente:**

INSERT INTO pedidos (cliente_id, fecha_recogida) VALUES
(21,   '2025-05-17:10:39:05' );


-- 6. **Añadir productos a un pedido específico:**

INSERT INTO productos_pedidos(pedido_id,productos_id,producto) VALUES
(1,1,'pizza, bebida');

-- 7. **Añadir ingredientes adicionales a una pizza en un pedido:**
INSERT INTO ingredientes_adicionales(pedido_id,nombre) VALUES
(1,'langosta');

-- 8. **Consultar el detalle de un pedido (productos y sus ingredientes):**

SELECT 

-- 9. **Actualizar el precio de una pizza en el menú:**

UPDATE productos
SET precio = 5000
WHERE productos_id = 5;

-- 10. **Actualizar la dirección de un cliente:**

UPDATE clientes
SET direccion = 'Carrizal'
WHERE cliente_id = 5;


-- 11. **Eliminar un producto del menú (bebida):**

DELETE FROM productos
WHERE productos_id = 1;

-- 14. **Listar todos los productos disponibles en el menú (pizzas y bebidas):**

SELECT * FROM productos;

-- 15. **Listar todos los ingredientes disponibles para personalizar una pizza:**

SELECT * FROM ingredientes

--19. **Listar todos los combos de pizzas con bebidas disponibles en el menú:**

SELECT * FROM productos WHERE combo = 'pizza/bebida';

-- 20. **Buscar pizzas con un precio mayor a $100:**

SELECT * FROM productos  WHERE producto = 'pizza' AND precio > 100;