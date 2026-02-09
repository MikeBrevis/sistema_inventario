INSERT INTO empleado (
    rut, nombre, apellido, telefono, correo, fecha_de_actualizacion
)
VALUES 
('19876543-2', 'Juan', 'Pérez', '912345678', 'juan.perez@empresa.com', '2026-02-05'),
('20234567-8', 'Ana', 'Martínez', '922334455', 'ana.mtz@empresa.com', '2026-02-05'),
('21234567-8', 'Carlos', 'Ruiz', '933445566', 'carlos.ruiz@empresa.com', '2026-02-05'),
('22234567-8', 'Elena', 'Gómez', '944556677', 'elena.gomez@empresa.com', '2026-02-05'),
('23234567-8', 'Ricardo', 'Soto', '955667788', 'rsoto@empresa.com', '2026-02-05');

INSERT INTO cliente (
    nombre, apellido, telefono, correo, fecha_de_actualizacion
)
VALUES 
('Mateo', 'Salazar', '910203040', 'm_salazar@empresa.com', '2026-02-09'),
('Isabella', 'Ortiz', '920304050', 'i_ortiz@empresa.com', '2026-02-09'),
('Alejandro', 'Peña', '930405060', 'ale_pena@empresa.com', '2026-02-09'),
('Camila', 'Blanco', '940506070', 'c_blanco@empresa.com', '2026-02-09'),
('Nicolás', 'Herrera', '950607080', 'n_herrera@empresa.com', '2026-02-09');

INSERT INTO PRODUCTO (
    nombre, peso, costo, fecha_de_actualizacion
)

VALUES
('CPM230-Plat 2.30m', '15.5 kg', 45000, '09-02-2026'),
('MVE100-Vert 1.00m', '8.2 kg', 22000, '09-02-2026'),
('MVE200-Vert 2.00m', '14.8 kg', 38000, '09-02-2026'),
('MCA075-Cabez 0.75m', '4.1 kg', 12500, '09-02-2026'),
('MHO230-Horiz 2.30m', '9.7 kg', 27000, '09-02-2026');

INSERT INTO BODEGA (
    nombre_sucursal, ciudad, comuna, fecha_de_actualizacion
)
VALUES 
('sucursal IQ', 'Iquique', 'Tarapacá', '09-02-2026'),
('sucursal AN', 'Antofagasta', 'Antofagasta', '09-02-2026'),
('sucursal ST', 'Santiago', 'Metropolitana', '09-02-2026'),
('sucursal CP', 'Concepción', 'Biobío', '09-02-2026'),
('sucursal PT', 'Puerto Montt', 'Los Lagos', '09-02-2026'),
('sucursal PV', 'Puchuncaví', 'Valparaíso', '09-02-2026');


insert into cotizacion (
	id_cotizacion, id_cliente_fk, id_empleado_fk, fecha_de_venta, tipo_de_contrato
)

values (501, 11, 1, '2026-02-05', 'venta directa' )










