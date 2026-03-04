# 📦 Sistema de Inventario - Gestión de Bodegas

Este es un sistema diseñado para registrar y gestionar los insumos manejados tanto en una bodega principal como en **6 sucursales** de una organización. Permite llevar un control riguroso del stock, ingresos y entregas, con un flujo de aprobación estricto para mantener la integridad de la base de datos de inventario.

---

## 👥 Roles del Sistema
El sistema divide las responsabilidades en dos roles principales:

1. **Usuario Maestro (Admin)**: Tiene el control completo del sistema. Es el único que puede **aprobar o rechazar** las solicitudes de ingreso, así como de editar y eliminar los insumos creados. Recibe alertas inteligentes (ej. cuando el stock baja de 5 unidades).
2. **Usuario de Bodega**: Encargado de las operaciones de campo. Puede generar solicitudes para registrar nuevos insumos o registrar salidas (entregas) a personal, pero estas **siempre requieren de la aprobación** del Usuario Maestro para hacerse efectivas.

---

## ⚙️ Reglas de Negocio Principales
- **Integridad del Stock**: El sistema jamás permite stock negativo. Las validaciones matemáticas bloquean entregas si superan el stock actual.
- **Aislamiento de Sucursales**: Los movimientos afectan sólo a la sucursal operada. El stock general es un cálculo consolidado en tiempo real.
- **Flujo de Aprobaciones**: Toda solicitud (ingresos o despachos) nace en estado *Pendiente*. Sólo un Usuario Maestro puede cambiarla a *Aprobada* (haciendo efectivo el cambio de stock) o *Rechazada*. Esta transición es inmutable.
- **Trazabilidad Absoluta**: Toda entrega (salida) debe especificar explícitamente el nombre del receptor. Además, cada movimiento conserva la rúbrica del usuario logueado en base a su ID.

---

## 🚀 Guía de Instalación (Cómo levantar el proyecto)

Dado que el proyecto utiliza código de base de datos relacional y está preparado para entornos virtualizados, sigue estos pasos para levantar el aplicativo de forma local:

### 1. Requisitos Previos
- **Python 3.x** instalado en tu sistema.
- Motor de Base de Datos compatible con lenguaje SQL (MySQL, PostgreSQL o SQLite, según se esté usando).

### 2. Clonar el repositorio
```bash
git clone <url-del-repositorio>
cd sistema_inventario
```

### 3. Configuración del Entorno Virtual (Recomendado)

**En Windows:**
```bash
python -m venv venv
venv\Scripts\activate
```

**En Linux/Mac:**
```bash
python3 -m venv venv
source venv/bin/activate
```

### 4. Instalación de Dependencias
pip install -r requirements.txt



## 📄 Documentación Adicional
En la carpeta raíz puedes encontrar material adicional y diagramas que respaldan la arquitectura del proyecto:

* `Análisis y diseño - Sistema de Inventario.docx`: Documento principal de análisis.
* `ER_diagram.drawio` & `ER_diagram.png`: Diagramas de Entidad-Relación de la base de datos.
* `casos_uso_UML2.png`: Diagrama de casos de uso (UML).
* `historias_usuario.md`: Detalle de Historias de Usuario para el desarrollo del aplicativo.
* `reglas_negocio.md`: Detalles minuciosos del comportamiento y reglas de validación.
* `documentation.md`: Información de apoyo y de requisitos iniciales.
