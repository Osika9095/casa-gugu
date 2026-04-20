# Architecture — BabyBot Instagram

> Type: Dynamic (updated via /progress and /update-context)
> Used: building + system changes
> Last updated: 2026-04-19

---

## Strategy

Prototype → Validate → Build → Scale

---

## 1. Prototype Architecture

### Purpose
Validar que usuarios completan el flujo conversacional y capturan su pedido

### Stack
- ManyChat (plan gratuito)
- Instagram DM API (via ManyChat)

### Components
- UI: Mensajes y botones en Instagram DM
- Logic: Flujos ManyChat con condiciones simples
- Mock/Data: Catálogo de productos hardcodeado en los mensajes

### Data Flow
User → Instagram DM → ManyChat Flow → Respuesta automática

---

## 2. Production Architecture (MVP)

### Purpose
Bot operativo 24/7 con captura real de pedidos

### Stack
- ManyChat (plan gratuito)
- Instagram API (via ManyChat)
- Google Sheets (captura de pedidos)

### Components
- Frontend: Flujo conversacional en Instagram DM
- Backend/API: ManyChat flows + Zapier/Make (conector gratuito a Sheets)
- Database: Google Sheets (registro de pedidos)
- Services: Notificación al dueño vía email o DM interno

### Data Flow
User → Instagram DM → ManyChat Flow → Google Sheets (pedido) → Notificación al dueño

---

## 3. Evolution

- Prototype: flujos estáticos, sin integración externa
- MVP: agrega Google Sheets para persistencia de pedidos
- Futuro: integración de pagos (Mercado Pago u otro) o CRM básico

---

## Rules

- High-level only
- No code
- No over-engineering
- Must evolve with system
