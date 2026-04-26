# CLAUDE.md — Casa GUGÜ

> Source of truth: docs/PROJECT_STATE.md + codebase
> Read this before touching anything in the project

---

## Proyecto

Sitio web catálogo + captura de pedidos para negocio de pañales y toallitas para bebé (Casa GUGÜ).

Sustituye el proceso manual de WhatsApp: cliente ve productos, elige, y deja su pedido — dueño recibe la orden lista para gestionar.

---

## MVP (3 pasos core)

1. Ver catálogo — pañales (tallas/precios), toallitas (tipos/precios), paquetes
2. Ver precios y opciones de pago
3. Confirmar selección + datos de entrega → notificación al dueño

---

## Stack

| Layer | Tech |
|---|---|
| Framework | Next.js (App Router) |
| UI | Tailwind + Antigravity |
| Base de datos | Supabase |
| Deploy | Vercel |
| Notificación | Resend (email) |

---

## Constraints

- Deadline: **10 mayo 2026** (13 días desde el 27 abril)
- Sin integración de pagos — solo captura de pedido
- Sitio web es el **único canal de venta** — tolerancia cero a errores de onboarding
- Budget de herramientas: por confirmar

---

## Reglas críticas

- No tocar auth / RLS / DB sin permiso explícito
- La notificación al dueño es core — nunca optional
- No agregar features fuera del MVP sin aprobación
- Un cambio a la vez — deadline ajustado

---

## Usuarios reales de referencia

- Ricky Galvez
- Marian Beltrand
- Leonel Guerra
