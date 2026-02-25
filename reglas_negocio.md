1. Reglas de Integridad del Inventario
# Prevención de Stock Negativo: El sistema jamás debe permitir que la cantidad de un insumo en una sucursal sea menor a cero. Antes de procesar cualquier Solicitud de Entrega, se debe validar matemáticamente que la cantidad solicitada sea menor o igual al stock disponible actual. Si no hay suficiente, la operación se bloquea.

# Aislamiento de Sucursales: Las transacciones de ingreso o salida afectan únicamente a la sucursal de origen/destino. El "Stock General" no es un número que se edite directamente, sino un cálculo en tiempo real que suma los inventarios individuales de las 6 sucursales.

# Alerta de Reabastecimiento (Tu regla): Cada vez que se ejecuta una salida de inventario exitosa, el sistema debe evaluar el saldo final de ese insumo en esa sucursal. Si el resultado es de 5 unidades o menos, se dispara automáticamente un evento de "Alerta" dirigido al usuario con rol de Maestro.

2. Reglas del Ciclo de Vida de las Solicitudes
# Nacimiento Restringido: Toda solicitud creada por un Usuario de Bodega (ya sea de ingreso o de entrega) nace obligatoriamente con el estado "Pendiente". El inventario no se toca en esta fase.

# Transición Inmutable: Solo una cuenta autenticada con el rol "Maestro" tiene el poder de cambiar el estado de una solicitud de "Pendiente" a "Aprobada" o "Rechazada". Una vez que una solicitud sale del estado "Pendiente", su estado es definitivo y no puede volver atrás.

# Ejecución Sincronizada: La actualización del stock en el inventario y el cambio de estado de la solicitud a "Aprobada" deben ocurrir como un solo movimiento indivisible. Si falla uno, no se guarda el otro (esto evita tener solicitudes aprobadas que no movieron stock).

3. Reglas de Trazabilidad
# Entrega Nominativa: Ninguna Solicitud de Entrega puede ser procesada ni aprobada si no incluye explícitamente el nombre y apellido de la persona física que recibe el insumo. No existen salidas "anónimas".

# Huella de Autoría: Toda acción de creación de solicitud debe llevar adjunta la firma (ID) del Usuario de Bodega que la generó, y toda aprobación debe registrar al Usuario Maestro que la autorizó.