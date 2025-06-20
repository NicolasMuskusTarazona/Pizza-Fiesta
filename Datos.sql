
INSERT INTO clientes (
    nombre,
    email,
    telefono,
    direccion,
    fecha_registro
) VALUES
    ('Ana Pérez',         'ana.perez@gmail.com',      '+57 325321456',   'Calle 123',              '2025-01-15'),
    ('Juan García',       'juan.garcia@hotmail.com',  '+57 325321416',   'Avenida 45',             '2025-11-22'),
    ('María López',       'maria.lopez@gmail.com',    '+57 324122347',   'Calle Falsa 123',        '2025-02-03'),
    ('Carlos Sánchez',    'carlos.sanchez@yahoo.com', '+57 312304553',   'Av. Libertad 90',        '2025-05-17'),
    ('Lucía Fernández',   'lucia.fernandez@gmail.com','+57 128375193',   'Plaza Mayor 12',         '2025-08-21'),
    ('Pablo Martínez',    'pablo.martinez@gmail.com', '+57 723481289',   'Calle Nueva 45',         '2025-09-15'),
    ('Raúl Torres',       'raul.torres@hotmail.com',  '+57 128231832',   'Av. Central 120',        '2025-04-01'),
    ('Elena Ramírez',     'elena.ramirez@gmail.com',  '+57 547812834',   'Paseo del Prado 5',      '2025-12-20'),--
    ('Sofía Gómez',       'sofia.gomez@gmail.com',    '+57 112083127',   'Calle Sol 18',           '2025-11-30'),
    ('Andrés Ortega',     'andres.ortega@hotmail.com','+57 582912392',   'Av. Buenavista 67',      '2025-07-14'),
    ('Iván Navarro',      'ivan.navarro@gmail.com',   '+57 128392157',   'Av. del Rey 21',         '2025-02-05'),
    ('Daniel Ruiz',       'daniel.ruiz@yahoo.com',    '+57 658123921',   'Calle Grande 99',        '2025-02-17'),
    ('Esther Blanco',     'esther.blanco@gmail.com',  '+57 678239122',   'Av. Colón 3',            '2025-10-20'),
    ('Nuria Gil',         'nuria.gil@gmail.com',      '+57 589129043',   'Calle Olmo 30',          '2025-06-30'),
    ('Miguel Torres',     'miguel.torres@hotmail.com','+57 781239233',   'Paseo Marítimo 12',      '2025-04-05'),
    ('Paula Castro',      'paula.castro@gmail.com',   '+57 528148192',   'Plaza Carmen 8',         '2025-12-05'),
    ('Sergio Márquez',    'marquez@hotmail.com',      '+57 128912993',   'Av. Sol 45',             '2025-05-22'),
    ('Beatriz Vega',      'beatriz.vega@gmail.com',   '+57 658283499',   'Calle Verde 67',         '2025-03-30'),
    ('Álvaro Ramos',      'alvaro.ramos@gmail.com',   '+57 128396123',   'Av. Central 55',         '2025-09-10'),
    ('Juan Quiroga',      'juan.quiroga@gmail.com',   '+57 300123112',   'Cra 10 #45-20',          '2025-06-01');

INSERT INTO productos (producto, tamaño, precio, ingredientes,combo) VALUES
('pizza',         'grandes',    15, 'cebollin', 'pizza/bebida'),
('bebida',        'pequeñas',   5,  'pepino',   'NoCombo'),
('pizza',         'grandes',    15, 'queso',    'NoCombo'),
('bebida',        'medianas',   10, 'carne',    'NoCombo'),
('pizza',         'grandes',    15, 'ninguno',  'NoCombo'),
('bebida',        'medianas',   10, 'pepino',   'pizza/bebida'),
('pizza',         'grandes',    15, 'cebollin', 'NoCombo'),
('pizza',         'medianas',   10, 'carne',    'pizza/bebida'),
('bebida',        'medianas',   10, 'carne',    'NoCombo'),
('pizza',         'pequeñas',   15, 'cebollin', 'NoCombo'),
('bebida',        'grandes',    15, 'cebollin', 'pizza/bebida'),
('pizza',         'pequeñas',   5,  'ninguno',  'pizza/bebida'),
('bebida',        'grandes',    15, 'ninguno',  'NoCombo'),
('pizza',         'medianas',   10, 'queso',    'NoCombo'),
('pizza',         'pequeñas',   5,  'carne',    'pizza/bebida'),
('bebida',        'medianas',   10, 'queso',    'NoCombo'),
('pizza',         'pequeñas',   5,  'ninguno',  'pizza/bebida'),
('bebida',        'grandes',    15, 'pepino',   'NoCombo'),
('pizza',         'grandes',    15, 'carne',    'pizza/bebida'),
('bebida',        'medianas',   10, 'queso',    'NoCombo'),
('pizza',         'pequeñas',   5,  'ninguno',  'NoCombo');

INSERT INTO pedidos (cliente_id, fecha_recogida) VALUES
(4,   '2025-05-17:10:39:05' ) ,
(5,   '2025-08-21:09:23:17' ) ,
(6,   '2025-09-15:15:31:01' ) ,
(7,   '2025-04-01:14:07:10' ) ,
(8,   '2025-12-20:12:24:34' ) ,
(9,   '2025-11-10:17:28:41' ) ,
(10,  '2025-06-01:20:13:51') ,
(11,  '2025-06-02:18:16:23') ,
(12,  '2025-06-03:14:29:42') ,
(13,  '2025-07-12:14:34:32') ,
(14,  '2025-07-20:12:21:21') ,
(15,  '2025-08-15:10:39:41') ,
(16,  '2025-08-30:21:02:21') ,
(17,  '2025-09-10:19:18:42') ,
(18,  '2025-09-25:16:41:52') ,
(19,  '2025-10-05:19:27:23') ,
(20,  '2025-10-18:15:56:51') ;

INSERT INTO detalles_pedidos (productos_id,pedido_id, precio_unitario, cantidad) VALUES
(1,1, 6, 3),
(2,2, 10, 5),
(3,3, 14, 7),
(4,4, 10, 5),
(5,5, 6, 3),
(6,6, 2, 1),
(7,7, 10, 5),
(8,8, 4, 2);

INSERT INTO ingredientes(pedido_id,nombre) VALUES
(1,'atun'),
(2,'peperoni'),
(3,'pollo'),
(4,'cebollin'),
(5,'queso'),
(6,'carne'),
(7,'ninguno');

INSERT INTO productos_pedidos(pedido_id,productos_id,producto) VALUES
(1,1,'pizza'),
(2,2,'bebida');


INSERT INTO ingredientes_adicionales(pedido_id,nombre) VALUES
(1,'chicharron');