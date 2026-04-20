# Idea Draft — BabyBot Instagram

> Type: Static (locked after validation)
> Used: /new-project
> Last updated: 2026-04-19 23:32

---

## Problem
- Specific problem: Imposibilidad de atender consultas 24/7 y pérdida de ventas por lentitud en respuestas.
- Who: Emprendedor/dueño de negocio en etapa inicial.
- Why it matters: La inmediatez es crítica en Instagram; la falta de respuesta rápida deriva clientes a la competencia.

## Target User
- Primary user: Emprendedor de productos para bebés (pañales y toallitas).
- Context: Recibe múltiples consultas repetitivas de catálogo y precios por DM.
- Current alternative: Respuesta manual lenta o uso de respuestas rápidas de Instagram sin automatización de flujo.

## Core Idea
- Automatización de ventas por DM que califica al cliente, configura su pedido (pañales/toallitas) y captura la orden para cierre manual.

## Value Proposition
- Atención inmediata 24/7 y filtrado de prospectos, entregando al dueño pedidos listos para procesar.

## Core Flow (CRITICAL)
1. User: Pregunta por productos o precios en Instagram DM.
2. System: Saluda y ofrece menú: Pañales, Toallitas o Pack Completo.
3. User: Elige categoría y especifica necesidad (ej. Talla de pañal).
4. System: Muestra paquetes disponibles y ofrece el "add-on" (toallitas de bolsillo).
5. User: Confirma selección y proporciona datos de entrega.
6. System: Captura el pedido completo y notifica al dueño para la gestión final.

---

## Key Features (MVP)
- Menú de selección interactivo (Pañales vs Toallitas).
- Calculador de paquetes y visualización de precios.
- Lógica de sugerencia de producto adicional (Upsell).
- Formulario de captura de pedido (Nombre, Dirección, Teléfono).

## Assumptions
- Los usuarios prefieren un bot que les dé respuestas claras al instante sobre esperar una respuesta humana.
- Los datos de entrega se pueden recolectar de forma estructurada dentro del chat.

## Constraints
- Time: Implementación inmediata.
- Budget: Gratuito (Uso de capas gratuitas de herramientas externas como ManyChat).
- Technical: Sin programación; uso de plataformas low-code compatibles con Instagram API.
- Scope: Exclusivamente levantamiento de pedidos (sin integración de pagos).

## Risks
- Main: Dependencia de plataformas externas y sus limitaciones en planes gratuitos.
- Secondary: El cliente puede abandonar si el flujo de preguntas de captura de pedido es muy largo.

## Open Questions
- ¿Se enviará el resumen del pedido a un Google Sheets o solo quedará en el chat de Instagram?
- ¿Existen zonas de delivery específicas que el bot deba validar?

---

## Clarity Check

- Problem specific: YES
- User defined: YES
- Flow clear: YES
- Solution concrete: YES
- Scope MVP-sized: YES
