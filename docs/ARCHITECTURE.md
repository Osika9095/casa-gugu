# Architecture — Casa GUGÜ

> Type: Dynamic (updated via /checkpoint and /update-dupla)
> Used: building + system changes
> Last updated: 2026-04-26

---

## Strategy

Prototype → Validate → Build → Scale

---

## Stack

| Layer | Tech |
|---|---|
| Framework | Next.js 16 (App Router) |
| UI | Tailwind CSS + Antigravity |
| Estado global | React Context (CartContext) + localStorage |
| Base de datos | Supabase (products + orders) |
| Deploy | Vercel |
| Notificación | WhatsApp link (client-side, sin backend externo) |

---

## Supabase Schema

### `products`
```
id          uuid PK
name        text
category    text  -- 'panal' | 'toallita' | 'paquete'
description text
price       numeric
image_url   text
size        text  -- 'S' | 'M' | 'L' | 'XL' | null
in_stock    boolean
created_at  timestamptz
```

### `orders`
```
id             uuid PK
customer_name  text
address        text
phone          text
notes          text
items          jsonb  -- [{product_id, name, price, qty}]
total          numeric
created_at     timestamptz
```

---

## Páginas / Rutas

| Ruta | Tipo | Fuente de datos |
|---|---|---|
| `/` | Server Component | Estático |
| `/panales` | Server Component | Supabase products (category='panal'+'paquete') |
| `/toallitas` | Server Component | Supabase products (category='toallita'+'paquete') |
| `/pedido` | Client Component | CartContext |
| `/confirmacion` | Client Component | URL params + estático |

---

## Data Flow

### Exploración del catálogo
```
Cliente → /panales o /toallitas
→ Next.js Server Component fetchea Supabase products
→ Muestra productos con botón "Agregar al carrito"
→ CartContext actualiza estado + persiste en localStorage
```

### Flujo de pedido
```
Cliente → /pedido
→ Lee CartContext → muestra resumen del carrito
→ Llena formulario (nombre, dirección, teléfono)
→ Submit → API Route → Supabase INSERT orders
→ Redirect → /confirmacion?order_id=[id]
```

### Confirmación
```
/confirmacion
→ Muestra instrucciones de pago (datos bancarios — texto estático)
→ Genera WhatsApp link:
   wa.me/[número]?text=*Nuevo Pedido Casa GUGÜ*
   Cliente: [nombre] | Dirección: [...] | Tel: [...]
   Productos: [lista] | Total: $[monto]
→ Cliente hace clic → WhatsApp del dueño recibe el pedido
```

---

## Env Vars (.env.local)

```
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
NEXT_PUBLIC_WHATSAPP_NUMBER=52XXXXXXXXXX
```

---

## Rules

- Sin backend externo para notificaciones — WhatsApp link es client-side
- Sin autenticación — catálogo público, órdenes anónimas
- No sobre-engineering — MVP funcional primero
- Cambios de precio → Supabase dashboard (sin re-deploy)
