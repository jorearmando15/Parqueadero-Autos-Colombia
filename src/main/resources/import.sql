/* Populate tables */
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Carlos', 'Ramírez', 'carlos.ramirez@parqueadero.com', '2017-08-01', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Ana', 'Fernández', 'ana.fernandez@parqueadero.com', '2017-08-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Luis', 'Martínez', 'luis.martinez@parqueadero.com', '2017-08-03', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('María', 'González', 'maria.gonzalez@parqueadero.com', '2017-08-04', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jorge', 'Pérez', 'jorge.perez@parqueadero.com', '2017-08-05', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Marta', 'López', 'marta.lopez@parqueadero.com', '2017-08-06', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Ricardo', 'Hernández', 'ricardo.hernandez@parqueadero.com', '2017-08-07', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Laura', 'Torres', 'laura.torres@parqueadero.com', '2017-08-08', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Andrés', 'Suárez', 'andres.suarez@parqueadero.com', '2017-08-09', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Sofía', 'Morales', 'sofia.morales@parqueadero.com', '2017-08-10', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Daniel', 'Castillo', 'daniel.castillo@parqueadero.com', '2017-08-11', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Patricia', 'Rojas', 'patricia.rojas@parqueadero.com', '2017-08-12', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Santiago', 'Ramírez', 'santiago.ramirez@parqueadero.com', '2017-08-13', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Camila', 'Jiménez', 'camila.jimenez@parqueadero.com', '2017-08-14', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('David', 'Ortega', 'david.ortega@parqueadero.com', '2017-08-15', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Lucía', 'Vega', 'lucia.vega@parqueadero.com', '2017-08-16', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Alberto', 'Cruz', 'alberto.cruz@parqueadero.com', '2017-08-17', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Isabel', 'Reyes', 'isabel.reyes@parqueadero.com', '2017-08-18', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Oscar', 'Navarro', 'oscar.navarro@parqueadero.com', '2017-08-19', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Carmen', 'Flores', 'carmen.flores@parqueadero.com', '2017-08-20', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Juan', 'Lara', 'juan.lara@parqueadero.com', '2017-08-21', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Elena', 'Campos', 'elena.campos@parqueadero.com', '2017-08-22', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Miguel', 'Peña', 'miguel.pena@parqueadero.com', '2017-08-23', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Silvia', 'Díaz', 'silvia.diaz@parqueadero.com', '2017-08-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Fernando', 'Mendoza', 'fernando.mendoza@parqueadero.com', '2017-08-25', '');

INSERT INTO productos (nombre, precio, create_at) VALUES('Estacionamiento por hora', 5000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Estacionamiento por día', 20000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Estacionamiento mensual', 300000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Estacionamiento para vehículos pesados por día', 50000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Servicio de lavado básico', 15000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Servicio de lavado completo', 30000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Servicio de valet parking', 10000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Cuidado y vigilancia 24 horas', 10000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Servicio de recarga de batería', 15000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Servicio de inflado de neumáticos', 5000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Mantenimiento básico de vehículo', 40000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Limpieza y aspirado de interiores', 20000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Desinfección de cabina', 15000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Polichado y encerado del vehículo', 40000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Zona de estacionamiento techado por día', 25000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Estacionamiento premium cerca de salida', 30000, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura pago por servicios de parqueadero', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura pago por servicios de lavado', 'Alguna nota importante!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);

/* Creamos algunos usuarios con sus roles */
INSERT INTO `users` (documentoID, nombres, apellidos, username, password, telefono, enabled) VALUES ('1234567890', 'Andres david', 'Padilla', 'andres','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','123-456-7890',1);
INSERT INTO `users` (documentoID, nombres, apellidos, username, password, telefono, enabled) VALUES ('123456789', 'Jorge Armando', 'Rodriguez Orozco', 'admin','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','987-654-3210',1);

INSERT INTO `authorities` (user_id, authority) VALUES (1,'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_ADMIN');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_USER');