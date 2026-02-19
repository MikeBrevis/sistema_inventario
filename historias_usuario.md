# Historias de Usuario - Sistema de Inventario

## Roles
- **Usuario Maestro (Admin)**: Responsable de la gestión y visualización completa del inventario y aprobación de movimientos.
- **Usuario de Bodega**: Encargado de ingresar entrega de insumos (requiere aprovacion del usuario maestro) y visualizar el inventario.

---

### Módulo de Autenticación y Seguridad

**HU-01: Acceso al Sistema**
- **Como** usuario (Maestro o Bodega),
- **Quiero** iniciar sesión con mis credenciales (usuario y contraseña),
- **Para** acceder a las funcionalidades correspondientes a mi rol y resguardar la información.
*(Ref: Requerimiento 1)*

### Módulo de Gestión de Inventario (Maestro)

**HU-02: Aprobación de Movimientos**
- **Como** Usuario Maestro,
- **Quiero** visualizar las solicitudes pendientes de ingreso de insumos y poder aprobarlas o rechazarlas,
- **Para** asegurar que solo los movimientos verificados afecten el inventario real.
*(Ref: Requerimiento 2)*

**HU-03: Edición de Insumos**
- **Como** Usuario Maestro,
- **Quiero** modificar los detalles de un insumo existente (nombre, descripción, stock mínimo, etc.),
- **Para** corregir errores en la carga inicial o actualizar información obsoleta.
*(Ref: Requerimiento 4)*

**HU-04: Eliminación de Insumos**
- **Como** Usuario Maestro,
- **Quiero** eliminar insumos del sistema que ya no se utilizan,
- **Para** mantener la base de datos de productos limpia y relevante.
*(Ref: Requerimiento 4)*

### Módulo de Gestión de Inventario (Bodega)

**HU-05: Solicitud de Ingreso de Insumos**
- **Como** Usuario de Bodega,
- **Quiero** registrar el ingreso de nuevos insumos en una sucursal específica y generar una solicitud de aprobación,
- **Para** notificar al maestro sobre la llegada de mercancía y esperar su validación.
*(Ref: Requerimiento 5)*

### Módulo de Visualización y Consultas

**HU-06: Visualización de Insumos por Sucursal**
- **Como** usuario,
- **Quiero** ver el listado de insumos filtrado por cada una de las 6 sucursales,
- **Para** conocer la disponibilidad de stock en una ubicación específica.
*(Ref: Requerimiento 3)*

**HU-07: Visualización Global de Insumos**
- **Como** usuario,
- **Quiero** ver un listado consolidado con el total de insumos de todas las sucursales,
- **Para** tener una visión general del activo de la empresa sin tener que sumar manualmente por sucursal.
*(Ref: Requerimiento 3)*

### Módulo de Entregas y Reportes

**HU-08: Registro de Entrega de Insumos**
- **Como** usuario,
- **Quiero** registrar la entrega de un insumo a un miembro del personal, incluyendo su nombre, fecha y cantidad entregada,
- **Para** llevar un control de quién tiene los recursos y documentar la salida de stock.
*(Ref: Requerimiento 6)*

**HU-09: Generación de Reporte Semanal**
- **Como** usuario,
- **Quiero** generar un reporte semanal que detalle los insumos entregados, desglosado por sucursal y personal receptor,
- **Para** auditar el consumo de recursos y planificar reabastecimientos.
*(Ref: Requerimiento 7)*
