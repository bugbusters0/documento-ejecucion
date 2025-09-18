## C. Modelo de Datos

### Modelo Entidad Relación

El modelo entidad-relación (E-R) representa la estructura conceptual de la base de datos del sistema Arka, definiendo las entidades principales, sus atributos y las relaciones entre ellas.

#### Entidades del Sistema

**FAMILIA**

- **Atributos:**
  - id_familia (PK): Identificador único de la familia
  - nombre: Nombre de la familia
  - fecha_creacion: Fecha de creación de la familia
  - presupuesto_general: Presupuesto total de la familia
  - estado: Estado activo/inactivo de la familia

**USUARIO**

- **Atributos:**
  - id_usuario (PK): Identificador único del usuario
  - id_familia (FK): Referencia a la familia
  - nombre: Nombre completo del usuario
  - email: Correo electrónico único
  - password: Contraseña encriptada
  - rol: Tipo de usuario (administrador/familiar)
  - limite_gasto: Límite de gasto mensual asignado
  - fecha_creacion: Fecha de registro
  - ultimo_acceso: Fecha y hora del último acceso
  - estado: Estado activo/inactivo del usuario

**CATEGORIA**

- **Atributos:**
  - id_categoria (PK): Identificador único de la categoría
  - id_familia (FK): Referencia a la familia
  - nombre: Nombre de la categoría
  - tipo: Tipo de categoría (ingreso/egreso)
  - presupuesto_asignado: Presupuesto mensual para la categoría
  - color: Color identificativo en hexadecimal
  - descripcion: Descripción de la categoría
  - estado: Estado activo/inactivo

**TRANSACCION**

- **Atributos:**
  - id_transaccion (PK): Identificador único de la transacción
  - id_usuario (FK): Referencia al usuario que realizó la transacción
  - id_categoria (FK): Referencia a la categoría
  - tipo: Tipo de transacción (ingreso/egreso)
  - monto: Cantidad monetaria
  - descripcion: Descripción detallada
  - fecha_transaccion: Fecha de la transacción
  - fecha_registro: Fecha de registro en el sistema
  - metodo_pago: Efectivo, tarjeta, transferencia, etc.
  - estado: Pendiente, confirmada, cancelada

**META_FINANCIERA**

- **Atributos:**
  - id_meta (PK): Identificador único de la meta
  - id_usuario (FK): Referencia al usuario propietario
  - nombre: Nombre de la meta financiera
  - descripcion: Descripción detallada de la meta
  - monto_objetivo: Cantidad objetivo a alcanzar
  - monto_actual: Cantidad acumulada actualmente
  - fecha_inicio: Fecha de inicio de la meta
  - fecha_limite: Fecha límite para alcanzar la meta
  - estado: Activa, completada, cancelada
  - prioridad: Alta, media, baja

**PRESUPUESTO**

- **Atributos:**
  - id_presupuesto (PK): Identificador único del presupuesto
  - id_familia (FK): Referencia a la familia
  - id_categoria (FK): Referencia a la categoría
  - mes: Mes del presupuesto
  - año: Año del presupuesto
  - monto_asignado: Monto presupuestado
  - monto_gastado: Monto utilizado
  - fecha_creacion: Fecha de creación del presupuesto

#### Relationships (Relaciones)

1. **FAMILIA - USUARIO**

   - Relación: 1:N (Una familia tiene múltiples usuarios)
   - Descripción: Cada usuario pertenece a una única familia

2. **FAMILIA - CATEGORIA**

   - Relación: 1:N (Una familia tiene múltiples categorías)
   - Descripción: Las categorías son específicas por familia

3. **USUARIO - TRANSACCION**

   - Relación: 1:N (Un usuario realiza múltiples transacciones)
   - Descripción: Cada transacción es registrada por un usuario específico

4. **CATEGORIA - TRANSACCION**

   - Relación: 1:N (Una categoría clasifica múltiples transacciones)
   - Descripción: Cada transacción debe estar asociada a una categoría

5. **USUARIO - META_FINANCIERA**

   - Relación: 1:N (Un usuario puede tener múltiples metas)
   - Descripción: Las metas financieras son individuales por usuario

6. **FAMILIA - PRESUPUESTO**

   - Relación: 1:N (Una familia maneja múltiples presupuestos)
   - Descripción: Los presupuestos se organizan por familia

7. **CATEGORIA - PRESUPUESTO**
   - Relación: 1:N (Una categoría puede tener presupuestos en diferentes períodos)
   - Descripción: Cada presupuesto está asociado a una categoría específica

#### Restricciones de Integridad

**Restricciones de Entidad:**

- Todos los identificadores primarios (PK) deben ser únicos y no nulos
- Los campos email en USUARIO deben ser únicos
- Los nombres de categoría deben ser únicos por familia

**Restricciones Referenciales:**

- Todas las llaves foráneas (FK) deben referenciar registros existentes
- No se permite eliminar familias con usuarios activos
- No se permite eliminar usuarios con transacciones asociadas
- No se permite eliminar categorías con transacciones asociadas

**Restricciones de Dominio:**

- Los montos deben ser valores positivos
- Las fechas de límite deben ser posteriores a las fechas de inicio
- Los roles de usuario deben ser 'administrador' o 'familiar'
- Los tipos de transacción deben ser 'ingreso' o 'egreso'
- Los estados deben estar dentro de los valores permitidos

**Restricciones Semánticas:**

- El monto actual de una meta no puede exceder el monto objetivo
- El monto gastado en un presupuesto no debería exceder el monto asignado
- Un usuario no puede tener transacciones en categorías inactivas
- Las fechas de transacción no pueden ser futuras

#### Índices Recomendados

Para optimizar el rendimiento de las consultas más frecuentes:

- **USUARIO**: Índice en (email), (id_familia, estado)
- **TRANSACCION**: Índice en (id_usuario, fecha_transaccion), (id_categoria, tipo)
- **META_FINANCIERA**: Índice en (id_usuario, estado)
- **PRESUPUESTO**: Índice en (id_familia, mes, año)

\newpage
