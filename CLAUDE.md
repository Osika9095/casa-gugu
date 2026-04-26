# CLAUDE.md — Casa GUGÜ

> Source of truth: docs/PROJECT_STATE.md + codebase
> Read this before touching anything in the project

---

## Proyecto

Sitio web catálogo + captura de pedidos para negocio de pañales y toallitas para bebé (Casa GUGÜ).

Sustituye el proceso manual de WhatsApp: cliente ve productos, elige, y deja su pedido — dueño recibe la orden lista para gestionar.

---

## MVP (flujo core)

1. Ver catálogo → agregar productos al carrito (múltiples)
2. Ir a /pedido → revisar carrito + llenar formulario (nombre, dirección, teléfono)
3. Confirmar → orden guardada en Supabase + pantalla con instrucciones de pago + botón WhatsApp pre-llenado al dueño

---

## Stack

| Layer | Tech |
|---|---|
| Framework | Next.js (App Router) |
| UI | Tailwind + Antigravity |
| Estado carrito | React Context + localStorage |
| Base de datos | Supabase |
| Deploy | Vercel |
| Notificación | WhatsApp link pre-llenado (sin backend externo) |

---

## Constraints

- Deadline: **10 mayo 2026**
- Sin integración de pagos — muestra instrucciones de pago (datos bancarios) en /confirmacion
- Pedido: múltiples productos por orden (carrito)
- Sitio web es el **único canal de venta** — tolerancia cero a errores de onboarding

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
