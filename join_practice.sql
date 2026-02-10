-- Inner join 

--explicitly form
select * 
from cliente 
inner join cotizacion
on cotizacion.id_cliente_fk = cliente.id_cliente

select *
from producto
inner join detalle_cotizacion
on producto.id_producto = detalle_cotizacion.id_producto_fk

--implicitly form
select * 
from cliente, cotizacion
where cotizacion.id_cliente_fk = cliente.id_cliente

--Left/Right join 

select *
from producto
right join detalle_cotizacion
on producto.id_producto = detalle_cotizacion.id_producto_fk

select *
from producto
left join detalle_cotizacion
on producto.id_producto = detalle_cotizacion.id_producto_fk





