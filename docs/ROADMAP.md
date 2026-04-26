# Roadmap — Casa GUGÜ

> Type: Dynamic (update if direction changes)
> Used: /new-session, /checkpoint
> Last updated: 2026-04-26
> Deadline: 10 mayo 2026

---

## Objective

- Prototype success: Usuario agrega productos al carrito y completa el pedido sin ayuda
- MVP success: Dueño recibe WhatsApp con pedido completo listo para gestionar

---

## Phases

### 1. Setup & Base
**Deadline:** 28 abril

**Entregables:**
- ✅ Next.js 16 + TypeScript + Tailwind
- Supabase: proyecto + tablas `products` y `orders` + datos reales del catálogo
- Vercel: repo conectado + primera preview URL

**GO:** Proyecto corre en local + preview en Vercel con datos reales en Supabase
**NO-GO:** Si Supabase no conecta en 2 días → usar JSON estático y continuar igual

---

### 2. Catálogo + Carrito
**Deadline:** 3 mayo

**Entregables:**
- Landing `/`: hero + categorías (Pañales / Toallitas) + CTA
- `/panales`: productos por talla desde Supabase + sección de paquetes
- `/toallitas`: productos desde Supabase + sección de paquetes
- CartContext (React Context + localStorage): agregar/quitar productos
- UI de carrito visible en todas las páginas

**GO:** Usuario puede explorar catálogo y agregar múltiples productos al carrito
**NO-GO:** Si carrito añade >3 días de delay → reducir a 1 producto por pedido y continuar

---

### 3. Flujo de Pedido
**Deadline:** 6 mayo

**Entregables:**
- `/pedido`: revisión del carrito + formulario (Nombre, Dirección, Teléfono)
- Submit → guardar orden en Supabase (tabla `orders`, items como JSONB)
- `/confirmacion`: instrucciones de pago (datos bancarios estáticos) + botón WhatsApp pre-llenado con todos los items

**GO:** Dueño recibe WhatsApp con pedido completo. Orden guardada en Supabase.
**NO-GO:** Si WhatsApp link no funciona en mobile → fallback: mostrar texto para copiar manualmente

---

### 4. Validación
**Deadline:** 8 mayo

**Entregables:**
- Prueba completa con Ricky Galvez, Marian Beltrand, Leonel Guerra
- Fix de friction points identificados

**GO:** 3 de 3 usuarios completan el flujo sin ayuda
**NO-GO:** Si menos de 2 completan → identificar blocker crítico y decidir simplificar o extender 1 día

---

### 5. Launch
**Deadline:** 10 mayo

**Entregables:**
- Dominio real → apuntado a Vercel
- Variables de entorno configuradas en producción
- Verificación completa en mobile (iOS + Android)

**GO:** Sitio accesible desde dominio real en mobile sin errores
**NO-GO:** Sin dominio listo → lanzar con URL de Vercel igualmente

---

## Rules

- PROJECT_STATE overrides this
- Deadline 10 mayo es hard — scope reduction > extensión
- Si blocker real → activar NO-GO correspondiente, no esperar
