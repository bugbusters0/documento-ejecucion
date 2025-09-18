### Requisitos

A continuación se presentarán los requisitos para el funcionamiento de Arka, estos serán clasificados en funcionales y no funcionales, se presentan en distintas tablas numeradas para su mayor comprensión:

#### Funcionales:

**TABLA I: REQUISITO DE USUARIO PARA EL REGISTRO DE USUARIOS**

| Campo                       | Descripción                                                                   |
| --------------------------- | ----------------------------------------------------------------------------- |
| **Requisito:**              | RU-01                                                                         |
| **Tipo de Requisito:**      | Usuario                                                                       |
| **Caso de Uso:**            | CU-017                                                                        |
| --------------------------- | ----------------------------------------------------------------------------- |
| **Descripción:**            | Realizar registro de usuarios (familiares) por parte del administrador.       |
| **Justificación:**          | Permite al administrador incorporar nuevos miembros a la plataforma familiar. |
| **Originador:**             | Administrador                                                                 |
| **Criterio de Aceptación:** | El administrador puede registrar usuarios y asignar límites de gasto.         |
| **Prioridad:**              | Crítica                                                                       |

\vspace{0.5cm}

**TABLA II: REQUISITO DE USUARIO PARA INGRESAR AL SISTEMA**

| Campo                       | Descripción                                                        |
| --------------------------- | ------------------------------------------------------------------ |
| **Requisito:**              | RU-02                                                              |
| **Tipo de Requisito:**      | Usuario                                                            |
| **Caso de Uso:**            | CU-001                                                             |
| --------------------------- | ------------------------------------------------------------------ |
| **Descripción:**            | Realizar inicio de sesión (login).                                 |
| **Justificación:**          | Es necesario para ingresar al sistema de manera segura.            |
| **Originador:**             | Usuario final (familiar).                                          |
| **Criterio de Aceptación:** | El sistema permite validar las credenciales e ingresar al sistema. |
| **Prioridad:**              | Crítica                                                            |

\newpage

**TABLA III: REQUISITO DE USUARIO PARA CERRAR SESIÓN**

| Campo                       | Descripción                                                      |
| --------------------------- | ---------------------------------------------------------------- |
| **Requisito:**              | RU-03                                                            |
| **Tipo de Requisito:**      | Usuario                                                          |
| **Caso de Uso:**            | CU-002                                                           |
| --------------------------- | ---------------------------------------------------------------- |
| **Descripción:**            | Cerrar sesión.                                                   |
| **Justificación:**          | Permite al usuario salir del sistema y proteger su información.  |
| **Originador:**             | Usuario final (familiar).                                        |
| **Criterio de Aceptación:** | El sistema cierra sesión y redirige al inicio de sesión.         |
| **Prioridad:**              | Importante                                                       |

\vspace{0.5cm}

**TABLA IV: REQUISITO DE USUARIO PARA VISUALIZAR BALANCE**

| Campo                       | Descripción                                                   |
| --------------------------- | ------------------------------------------------------------- |
| **Requisito:**              | RU-04                                                         |
| **Tipo de Requisito:**      | Usuario                                                       |
| **Caso de Uso:**            | CU-004                                                        |
| --------------------------- | ------------------------------------------------------------- |
| **Descripción:**            | Visualizar balance personal con ingresos y egresos.           |
| **Justificación:**          | Permite al usuario analizar su situación financiera personal. |
| **Originador:**             | Usuario final (familiar).                                     |
| **Criterio de Aceptación:** | El sistema muestra ingresos, egresos y balance filtrados.     |
| **Prioridad:**              | Importante                                                    |

\newpage
**TABLA V: REQUISITO PARA LA VISUALIZACIÓN DE GRÁFICOS DE BALANCE PERSONAL**

| Campo                       | Descripción                                                        |
| --------------------------- | ------------------------------------------------------------------ |
| **Requisito:**              | RU-05                                                              |
| **Tipo de Requisito:**      | Usuario                                                            |
| **Caso de Uso:**            | CU-005                                                             |
| --------------------------- | ------------------------------------------------------------------ |
| **Descripción:**            | Visualizar gráficos de balance personal.                           |
| **Justificación:**          | Ofrece una visualización intuitiva del estado financiero.          |
| **Originador:**             | Usuario final (familiar).                                          |
| **Criterio de Aceptación:** | El usuario accede a gráficos personalizados de ingresos y egresos. |
| **Prioridad:**              | Importante                                                         |

#### No Funcionales:

\vspace{0.5cm}

**TABLA VI: REQUISITO DE RENDIMIENTO**

| Campo                       | Descripción                                                                    |
| --------------------------- | ------------------------------------------------------------------------------ |
| **Requisito:**              | RNF-01                                                                         |
| **Tipo de Requisito:**      | Rendimiento                                                                    |
| **Descripción:**            | El sistema debe responder en menos de 2 segundos para operaciones básicas.     |
| **Justificación:**          | Garantizar una experiencia de usuario fluida.                                  |
| **Criterio de Aceptación:** | Tiempo de respuesta menor o igual a 2 segundos para el 95% de las operaciones. |
| **Prioridad:**              | Importante                                                                     |

**TABLA VII: REQUISITO DE SEGURIDAD**

| Campo                       | Descripción                                                        |
| --------------------------- | ------------------------------------------------------------------ |
| **Requisito:**              | RNF-02                                                             |
| **Tipo de Requisito:**      | Seguridad                                                          |
| **Descripción:**            | El sistema debe encriptar toda la información financiera sensible. |
| **Justificación:**          | Proteger la información financiera de los usuarios.                |
| **Criterio de Aceptación:** | Uso de encriptación AES-256 para datos sensibles.                  |
| **Prioridad:**              | Crítica                                                            |

**TABLA VIII: REQUISITO DE USABILIDAD**

| Campo                       | Descripción                                               |
| --------------------------- | --------------------------------------------------------- |
| **Requisito:**              | RNF-03                                                    |
| **Tipo de Requisito:**      | Usabilidad                                                |
| **Descripción:**            | La interfaz debe ser intuitiva para usuarios no técnicos. |
| **Justificación:**          | Facilitar la adopción por parte de familias.              |
| **Criterio de Aceptación:** | 90% de usuarios completan tareas básicas sin ayuda.       |
| **Prioridad:**              | Importante                                                |

\newpage
