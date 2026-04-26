# Project State — Casa GUGÜ

project: Casa GUGÜ — Catálogo Web
project_type: individual
updated: 2026-04-26
phase: Phase 1 — Setup & Base
phase_status: In Progress
model: Claude Sonnet 4.6
branch: work/phase1-setup

> Type: Dynamic (source of truth)
> Used: /new-session, /checkpoint, /update-dupla
> Last updated: 2026-04-26

---

## Current Goal

Lanzar catálogo web operativo para Casa GUGÜ antes del 10 de mayo — permite a clientes ver productos, agregar al carrito y dejar su pedido con notificación al dueño por WhatsApp.

---

## Status

ACTIVE — Phase 1 en progreso. Next.js + schema Supabase listos. Bloqueado en credenciales de Supabase cloud + conexión a Vercel.

---

## In Progress

- [x] Next.js 16 + TypeScript + Tailwind
- [x] Schema SQL (products + orders + RLS)
- [x] Cliente Supabase (src/lib/supabase.ts) + tipos TypeScript
- [x] Roadmap 5 fases con GO/NO-GO
- [ ] Crear proyecto Supabase cloud + obtener credenciales
- [ ] Llenar .env.local con URL + ANON_KEY + número WhatsApp
- [ ] Correr migración en Supabase cloud
- [ ] Conectar repo a Vercel + primera preview URL

---

## Next Steps

- [ ] **Must:** Crear proyecto en supabase.com → copiar URL + ANON_KEY → pegar en .env.local
- [ ] **Must:** Correr migración: `supabase db push` o ejecutar SQL en Supabase dashboard
- [ ] **Must:** Conectar repo GitHub a Vercel → obtener preview URL
- [ ] **Should:** Ingresar catálogo real a Supabase (productos, tallas, precios, imágenes)
- [ ] **Should:** Confirmar número WhatsApp del dueño para .env.local

---

## Blockers

- Supabase cloud: necesita credenciales (URL + ANON_KEY) del proyecto creado en supabase.com
- WhatsApp number del dueño: pendiente confirmar

---

## Recent Changes (last 5)

- 2026-04-26 — feat: supabase client, schema migration y tipos TypeScript
- 2026-04-26 — docs: roadmap 5 fases + architecture con carrito y WhatsApp link
- 2026-04-26 — feat: setup Next.js 16 + TypeScript + Tailwind + App Router
- 2026-04-26 — feat: inicializar proyecto Casa GUGÜ con estructura, docs y IML completo

---

## Sync Status

- Branch: work/phase1-setup
- Ahead of main: 3 commits
- Ready to merge: NO — Phase 1 incompleta (faltan credenciales + Vercel)

---

## Rules

- This + codebase = source of truth
- Updated on /checkpoint
- Do NOT infer state from chat
