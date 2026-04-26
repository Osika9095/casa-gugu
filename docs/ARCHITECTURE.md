# Architecture — Casa GUGÜ

> Type: Dynamic (updated via /checkpoint and /update-dupla)
> Used: building + system changes
> Last updated: 2026-04-26

---

## Strategy

Prototype → Validate → Build → Scale

---

## 1. Prototype Architecture

### Purpose
Validar que usuarios entienden el catálogo y completan el flujo de pedido sin explicación

### Stack
- Next.js (App Router) — páginas estáticas
- Tailwind + Antigravity — UI
- Datos hardcodeados en el código

### Components
- UI: Páginas de catálogo, página de paquetes, formulario de pedido
- Logic: Navegación entre categorías, validación del formulario
- Mock/Data: Productos y precios hardcodeados en `src/data/`

### Data Flow
```
Cliente → Página catálogo → Selecciona producto → Formulario de pedido → Confirmación
```

---

## 2. Production Architecture (MVP)

### Purpose
Sistema real: catálogo desde base de datos, pedidos capturados, dueño notificado

### Stack
- Next.js (App Router) + Tailwind + Antigravity
- Supabase — catálogo de productos + tabla de órdenes
- Vercel — deploy + edge functions
- Resend — email de notificación al dueño

### Components
- Frontend: Next.js pages (catálogo, producto, checkout, confirmación)
- Backend/API: Next.js API Routes (submit-order → Supabase + Resend)
- Database: Supabase
  - `products` (id, name, category, size, price, description, in_stock)
  - `orders` (id, product_id, customer_name, address, phone, delivery_option, created_at)
- Services: Resend (email al dueño con resumen del pedido)

### Data Flow
```
Cliente → Catálogo (Supabase) → Selecciona → Formulario
→ API Route → Supabase (orders) + Resend (email dueño) → Confirmación
```

---

## 3. Evolution

- Prototype: datos hardcodeados, sin DB, formulario fake
- MVP: Supabase real + notificación al dueño funcional
- Futuro: Panel admin para gestionar pedidos, integración de pagos (Mercado Pago / Stripe)

---

## Rules

- High-level only — no código aquí
- No over-engineering — 2 semanas de deadline
- Must evolve con el sistema
