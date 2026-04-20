# Project State — BabyBot Instagram

> Type: Dynamic (source of truth)
> Used: /new-session, /progress, /update-context
> Last updated: 2026-04-19

---

## Current Goal

Construir prototipo de bot en ManyChat que guíe al usuario por el flujo completo de compra (menú → selección → upsell → captura de datos → notificación al dueño).

---

## Status

Fase de Planning completada. Documentación base lista. Aún sin catálogo real ni flujo construido en ManyChat.

---

## In Progress

- Definir catálogo real (tallas de pañales, tipos de toallitas, precios)
- Decidir destino del pedido: Google Sheets vs solo chat de Instagram

---

## Next Steps

- [ ] **Must:** Conseguir catálogo real del cliente (productos, tallas, precios)
- [ ] **Must:** Decidir si pedidos van a Google Sheets o quedan solo en chat
- [ ] **Should:** Construir flujo prototipo en ManyChat (precios hardcodeados)
- [ ] **Should:** Mapear flujo conversacional completo en texto antes de construir
- [ ] **Could:** Definir zonas de delivery que el bot debe validar

---

## Blockers

- Catálogo de productos no definido (sin tallas ni precios reales)
- Decisión pendiente: Google Sheets vs solo chat para captura de pedidos

---

## Recent Changes (last 3–5)

- 2026-04-19 — Creado docs/ROADMAP.md (7 fases, desde Planning hasta Optimization)
- 2026-04-19 — Creado docs/ARCHITECTURE.md (Prototype: ManyChat solo / MVP: ManyChat + Google Sheets)
- 2026-04-19 — Creado Idea_Draft_BabyBot.md (idea validada, scope MVP definido)

---

## Sync Status (IMPORTANT)

- Branch: main
- Compared to main: 0 commits propios (solo initial commit)
- Ready to merge: NO — archivos sin commitear

---

## Rules

- This + codebase = source of truth
- Updated on /progress
- Do NOT infer state from chat

---

## Priority Rule

If conflict between documents:

1. PROJECT_STATE.md
2. Codebase
3. ROADMAP.md
4. ARCHITECTURE.md

Always follow this order.
