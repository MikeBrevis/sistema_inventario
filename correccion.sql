CREATE TABLE IF NOT EXISTS EMPLEADO (
ID_EMPLEADO int primary key, 
RUT varchar(10),
Nombre varchar(20) not null, 
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
ADD constraint uq_rut UNIQUE (RUT)
);



DROP TABLE EMPLEADO CASCADE;

CREATE TABLE IF NOT EXISTS EMPLEADO (
ID_EMPLEADO serial primary key, 
Nombre varchar(20) not null, 
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);


INSERT INTO empleado (nombre, telefono, correo, fecha_de_actualizacion)
VALUES
	('Alejandro Cortes',
		'944823643',
		'alejandro@cortes.cl',
		'2026-02-05');


CREATE TABLE IF NOT EXISTS CLIENTE (
ID_cliente int primary key, 
Nombre varchar(20) not null, 
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

CREATE TABLE IF NOT EXISTS COTIZACION (
ID_cotizacion int primary key,
ID_cliente_fk int,
ID_empleado_fk int,
Fecha_de_venta date not null, 
tipo_de_contrato varchar(20) not null,
constraint fk_empleado_cotizacion foreign key (ID_empleado_fk) references EMPLEADO(ID_EMPLEADO),
constraint fk_cliente_cotizacion foreign key (ID_cliente_fk) references CLIENTE(ID_cliente)
);

CREATE TABLE IF NOT EXISTS PRODUCTO (
ID_producto int primary key,
Nombre varchar(20) not null, 
Peso varchar(10) not null, 
Costo int not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

CREATE TABLE IF NOT EXISTS BODEGA (
ID_bodega int primary key,
Direccion varchar(20) not null, 
Comuna varchar(10) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

CREATE TABLE IF NOT EXISTS DETALLE_COTIZACION (
ID_DETALLE_COTIZACION int primary key,
ID_producto_fk int,
constraint fk_detalleCotizacion_producto foreign key (ID_producto_fk) references PRODUCTO(ID_producto)
);

CREATE TABLE IF NOT EXISTS STOCK (
ID_STOCK int primary key,
ID_bodega_fk int,
ID_producto_fk int,
Cantidad_productos int not null,
Reordenamiento int,
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
constraint fk_stock_bodega foreign key (ID_bodega_fk) references BODEGA(ID_bodega), /*Sintaxis para FK en una tabla*/
constraint fk_stock_producto foreign key (ID_producto_fk) references PRODUCTO(ID_producto)
);

--Inserta datos a una tabla existente
insert into cliente_backup (id_cliente, nombre, telefono, correo, fecha_de_creacion, fecha_de_actualizacion, apellido)
values ('123', 'Mike', '123456', 'kancer@gmail.com', '2023-01-15', '2023-01-15', 'Brevis');

insert into cliente_backup (id_cliente, nombre, telefono, correo, fecha_de_creacion, fecha_de_actualizacion, apellido)
values ('789', 'Bianca', '56489998', 'bianca@gmail.com', default, '2023-01-15', 'Figueroa');

--TRUNCATE // Especificamente para las tables

truncate table cliente_backup
