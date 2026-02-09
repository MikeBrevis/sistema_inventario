INSERT INTO empleado (
    rut, nombre, apellido, telefono, correo, fecha_de_actualizacion
)
VALUES 
('19876543-2', 'Juan', 'Pérez', '912345678', 'juan.perez@empresa.com', '2026-02-05'),
('20234567-8', 'Ana', 'Martínez', '922334455', 'ana.mtz@empresa.com', '2026-02-05'),
('21234567-8', 'Carlos', 'Ruiz', '933445566', 'carlos.ruiz@empresa.com', '2026-02-05'),
('22234567-8', 'Elena', 'Gómez', '944556677', 'elena.gomez@empresa.com', '2026-02-05'),
('23234567-8', 'Ricardo', 'Soto', '955667788', 'rsoto@empresa.com', '2026-02-05')

INSERT INTO cliente (
    id_cliente, nombre, telefono, correo, fecha_de_creacion, fecha_de_actualizacion
)
VALUES 
(11, 'Mateo Salazar', '910203040', 'mateo.salazar@empresa.com', DEFAULT, '2026-02-05'),
(12, 'Isabella Ortiz', '920304050', 'i.ortiz@empresa.com', DEFAULT, '2026-02-05'),
(13, 'Alejandro Peña', '930405060', 'ale.pena@empresa.com', DEFAULT, '2026-02-05'),
(14, 'Camila Blanco', '940506070', 'cblanco@empresa.com', DEFAULT, '2026-02-05'),
(15, 'Nicolás Herrera', '950607080', 'n.herrera@empresa.com', DEFAULT, '2026-02-05'),
(16, 'Gabriela Méndez', '960708090', 'gabriela.m@empresa.com', DEFAULT, '2026-02-05'),
(17, 'Samuel Vargas', '970809010', 'samuel.vargas@empresa.com', DEFAULT, '2026-02-05'),
(18, 'Martina Ríos', '980901020', 'mrios@empresa.com', DEFAULT, '2026-02-05'),
(19, 'Joaquín Silva', '990102030', 'j.silva@empresa.com', DEFAULT, '2026-02-05'),
(20, 'Victoria Lara', '911335577', 'vlara@empresa.com', DEFAULT, '2026-02-05');

select * from empleado

--Selecciona columnas de tablas
select id_cliente, nombre from cliente;

insert into cotizacion (
	id_cotizacion, id_cliente_fk, id_empleado_fk, fecha_de_venta, tipo_de_contrato
)

values (501, 11, 1, '2026-02-05', 'venta directa' )

select * from cotizacion;










