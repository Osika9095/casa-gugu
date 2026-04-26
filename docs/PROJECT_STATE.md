# Project State — Casa GUGÜ

project: Casa GUGÜ — Catálogo Web
project_type: individual
updated: 2026-04-26
phase: Phase 1 — Setup & Estructura Base
phase_status: In Progress
model: Claude Sonnet 4.6
branch: work/phase1-setup

> Type: Dynamic (source of truth)
> Used: /new-session, /checkpoint, /update-dupla
> Last updated: 2026-04-26

---

## Current Goal

Lanzar catálogo web operativo para Casa GUGÜ antes del 10 de mayo — permite a clientes ver productos, precios y dejar su pedido sin depender de WhatsApp manual.

---

## Status

Next.js 16 + TypeScript + Tailwind configurado y corriendo en local. Branch work/phase1-setup activo. Falta Supabase + Vercel para completar Phase 1.

---

## In Progress

- [x] Inicializar proyecto Next.js con Tailwind
- [ ] Configurar Supabase (tablas: products, orders)
- [ ] Conectar Next.js con Supabase
- [ ] Deploy pipeline en Vercel

---

## Next Steps

- [ ] **Must:** Crear proyecto en Supabase + definir tablas `products` y `orders`
- [ ] **Must:** Instalar `@supabase/supabase-js` + configurar cliente en `src/lib/supabase.ts`
- [ ] **Must:** Conectar repo a Vercel + primera preview URL
- [ ] **Should:** Definir notificación al dueño (Resend email vs WhatsApp link)
- [ ] **Could:** Decidir si inventario se gestiona desde Supabase dashboard o panel admin

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
