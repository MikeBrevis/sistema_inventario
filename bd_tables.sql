CREATE TABLE IF NOT EXISTS EMPLEADO (
id_empleado serial primary key, 
rut varchar(20) not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
telefono varchar(10) not null, 
correo varchar(50) not null, 
fecha_de_creacion date not null default current_date, 
fecha_de_actualizacion date,
constraint uq_rut UNIQUE (rut)
);

CREATE TABLE IF NOT EXISTS CLIENTE (
id_cliente serial primary key, 
nombre varchar(20) not null, 
apellido varchar(20), 
telefono varchar(10), 
correo varchar(50) not null, 
fecha_de_creacion date not null default current_date, 
fecha_de_actualizacion date
);

CREATE TABLE IF NOT EXISTS PRODUCTO (
id_producto serial primary key,
nombre varchar(20) not null, 
peso varchar(10) not null, 
costo int not null, 
fecha_de_creacion date not null default current_date, 
fecha_de_actualizacion date,
constraint uq_nombre UNIQUE (nombre)
);

CREATE TABLE IF NOT EXISTS BODEGA (
id_bodega serial primary key,
nombre_sucursal varchar(20) not null,
sucursal varchar(50) not null, 
region varchar(20) not null, 
fecha_de_creacion date not null default current_date, 
fecha_de_actualizacion date,
constraint uq_nombre_sucursal UNIQUE (nombre_sucursal)
);

CREATE TABLE IF NOT EXISTS COTIZACION (
id_cotizacion serial primary key,
id_cliente_fk integer,
id_empleado_fk integer,
fecha_de_venta date not null, 
tipo_de_contrato varchar(50) not null,
constraint fk_empleado_cotizacion foreign key (id_empleado_fk) references EMPLEADO(id_empleado),
constraint fk_cliente_cotizacion foreign key (id_cliente_fk) references CLIENTE(id_cliente)
);

CREATE TABLE IF NOT EXISTS DETALLE_COTIZACION (
id_detalle_cotizacion serial primary key,
id_cotizacion_fk integer,
id_producto_fk integer,
cantidad int not null default 1,
constraint fk_detalleCotizacion_cotizacion foreign key (id_cotizacion_fk) references COTIZACION(id_cotizacion),
constraint fk_detalleCotizacion_producto foreign key (id_producto_fk) references PRODUCTO(id_producto)
);

CREATE TABLE IF NOT EXISTS STOCK (
id_stock serial primary key,
id_bodega_fk integer,
id_producto_fk integer,
cantidad_productos int not null,
reordenamiento int not null,
fecha_de_creacion date not null default current_date, 
fecha_de_actualizacion date,
constraint fk_stock_bodega foreign key (id_bodega_fk) references BODEGA(id_bodega), 
constraint fk_stock_producto foreign key (id_producto_fk) references PRODUCTO(id_producto)
);
















