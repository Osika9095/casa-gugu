# Roadmap — Casa GUGÜ

> Type: Dynamic (update if direction changes)
> Used: /new-session, /checkpoint
> Last updated: 2026-04-26
> Deadline: 10 mayo 2026

---

## Objective

- Prototype success: Usuario ve el catálogo completo y puede dejar su pedido sin ayuda
- MVP success: Dueño recibe pedidos listos para gestionar — cero dependencia de WhatsApp

---

## Phases

### 1. Setup & Estructura Base
**Deadline:** 28 abril

- Inicializar Next.js + Tailwind + Antigravity
- Configurar Supabase (tablas: products, orders)
- Deploy pipeline en Vercel desde GitHub
- Confirmar catálogo real con el cliente

**GO:** Proyecto corre en local + preview en Vercel ✓

---

### 2. Prototype — Catálogo (Validación)
**Deadline:** 2 mayo

- Páginas de catálogo con datos hardcodeados:
  - Pañales: tallas + precios
  - Toallitas: tipos + precios
  - Paquetes / bundles
- Navegación básica entre categorías

**Checkpoint:**
- ¿El cliente entiende el catálogo sin explicación? YES/NO
- ¿Los precios y opciones son claros? YES/NO
- Decisión: proceed / ajustar copy / pivot

---

### 3. Technical Direction
**Deadline:** 3 mayo

- Conectar Supabase con los datos reales del catálogo
- Confirmar flujo de notificación: Resend email vs WhatsApp link
- Definir estructura del formulario de pedido

---

### 4. Development (MVP)
**Deadline:** 7 mayo

- Flujo completo funcional:
  1. Ver productos y paquetes (desde Supabase)
  2. Seleccionar producto + ver precio + opción de pago
  3. Formulario: Nombre, Dirección, Teléfono, Producto elegido
- Notificación al dueño al recibir pedido
- Reemplazar datos hardcodeados con Supabase real

---

### 5. Validación
**Deadline:** 8 mayo

- Prueba con Ricky Galvez, Marian Beltrand, Leonel Guerra
- Verificar que el dueño recibe la orden completa
- Corregir friction points identificados

**GO/NO-GO:**
- ¿3 usuarios completan el flujo sin ayuda? YES/NO
- ¿Dueño recibe notificación correcta? YES/NO

---

### 6. Deployment
**Deadline:** 9 mayo

- Dominio final apuntando a Vercel
- Variables de entorno en producción
- Verificación en mobile (WhatsApp → sitio es el flujo probable)

---

### 7. Optimization
**Post-launch**

- Reducir abandono en formulario de captura
- Posible panel admin para gestionar pedidos
- Integración de pagos (fase futura)

---

## Rules

- PROJECT_STATE overrides this
- Update only when direction changes
- Deadline 10 mayo es hard — scope reduction > extensión
