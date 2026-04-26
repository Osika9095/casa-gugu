# Project State — Casa GUGÜ

project: Casa GUGÜ — Catálogo Web
project_type: individual
updated: 2026-04-26
phase: Phase 1 — Setup & Estructura Base
phase_status: In Progress

> Type: Dynamic (source of truth)
> Used: /new-session, /checkpoint, /update-dupla
> Last updated: 2026-04-26

---

## Current Goal

Lanzar catálogo web operativo para Casa GUGÜ antes del 10 de mayo — permite a clientes ver productos, precios y dejar su pedido sin depender de WhatsApp manual.

---

## Status

Proyecto inicializado. Estructura de carpetas creada. Docs base generados. Aún sin código ni setup de Next.js.

---

## In Progress

- [ ] Inicializar proyecto Next.js con Tailwind
- [ ] Configurar Supabase (tablas: products, orders)
- [ ] Confirmar catálogo real con el cliente (tallas, precios, paquetes)

---

## Next Steps

- [ ] **Must:** Obtener catálogo real del cliente (tallas de pañales, tipos de toallitas, precios, paquetes)
- [ ] **Must:** `npx create-next-app@latest casa-gugu --typescript --tailwind --app`
- [ ] **Must:** Crear proyecto en Supabase + definir tablas `products` y `orders`
- [ ] **Should:** Definir opción de notificación al dueño (Resend email vs WhatsApp link)
- [ ] **Could:** Decidir si el inventario se gestiona desde Supabase dashboard o hay un panel admin

---

## Blockers

- Catálogo de productos no confirmado (tallas, precios, paquetes reales)
- Budget para herramientas de pago (Resend, etc.) sin confirmar

---

## Recent Changes (last 3–5)

- 2026-04-26 — Proyecto inicializado con /new-project (IML Score: 4/5)
- 2026-04-26 — Estructura de carpetas creada (src/, docs/, tests/, public/)
- 2026-04-26 — CLAUDE.md, ROADMAP.md, ARCHITECTURE.md, PROBLEMS.md generados
- 2026-04-19 — Idea_Draft_BabyBot.md creado (idea validada)

---

## Sync Status

- Branch: main
- Ahead of remote: pendiente commit
- Ready to merge: NO — setup de Next.js pendiente

---

## Rules

- This + codebase = source of truth
- Updated on /checkpoint
- Do NOT infer state from chat
