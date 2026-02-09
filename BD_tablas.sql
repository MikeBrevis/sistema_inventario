CREATE TABLE IF NOT EXISTS EMPLEADO (
ID_EMPLEADO serial primary key, 
RUT varchar(20) not null,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
constraint uq_rut UNIQUE (RUT)
);

CREATE TABLE IF NOT EXISTS CLIENTE (
ID_cliente serial primary key, 
Nombre varchar(20) not null, 
Apellido varchar(20), 
Telefono varchar(10), 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

CREATE TABLE IF NOT EXISTS PRODUCTO (
ID_producto serial primary key,
Nombre varchar(20) not null, 
Peso varchar(10) not null, 
Costo int not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
constraint uq_nombre UNIQUE (Nombre)
);

CREATE TABLE IF NOT EXISTS BODEGA (
ID_bodega serial primary key,
Nombre_sucursal varchar(20) not null,
direccion varchar(50) not null, 
Comuna varchar(20) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
constraint uq_nombre_sucursal UNIQUE (Nombre_sucursal)
);

CREATE TABLE IF NOT EXISTS COTIZACION (
ID_cotizacion serial primary key,
ID_cliente_fk serial,
ID_empleado_fk serial,
Fecha_de_venta date not null, 
tipo_de_contrato varchar(50) not null,
constraint fk_empleado_cotizacion foreign key (ID_empleado_fk) references EMPLEADO(ID_EMPLEADO),
constraint fk_cliente_cotizacion foreign key (ID_cliente_fk) references CLIENTE(ID_cliente)
);

CREATE TABLE IF NOT EXISTS DETALLE_COTIZACION (
ID_DETALLE_COTIZACION serial primary key,
ID_producto_fk serial,
constraint fk_detalleCotizacion_producto foreign key (ID_producto_fk) references PRODUCTO(ID_producto)
);

CREATE TABLE IF NOT EXISTS STOCK (
ID_STOCK serial primary key,
ID_bodega_fk serial,
ID_producto_fk serial,
Cantidad_productos int not null,
Reordenamiento int not null,
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
constraint fk_stock_bodega foreign key (ID_bodega_fk) references BODEGA(ID_bodega), 
constraint fk_stock_producto foreign key (ID_producto_fk) references PRODUCTO(ID_producto)
);














