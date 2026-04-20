# Roadmap — BabyBot Instagram

> Type: Dynamic (update if direction changes)
> Used: /new-session, /update-context
> Last updated: 2026-04-19

---

## Objective

- Prototype success: Usuario completa flujo de DM y pedido queda capturado sin intervención humana
- MVP success: Bot opera 24/7, dueño recibe pedidos completos listos para procesar

---

## Phases

### 1. Planning
- Definir catálogo real (pañales: tallas/precios, toallitas: tipos/precios)
- Mapear flujo conversacional completo paso a paso
- Decidir destino del pedido: Google Sheets vs solo chat

---

### 2. Prototype (Validation)
- Construir flujo en ManyChat con precios y productos fijos (hardcodeados)
- Cubrir solo el core flow: menú → selección → upsell → captura datos
- Sin integraciones externas

Checkpoint:
- Works? YES/NO
- Useful? YES/NO
- Decision: proceed/pivot/stop

---

### 3. Technical Direction
- Confirmar stack: ManyChat + Google Sheets (o solo chat)
- Decidir si validar zonas de delivery dentro del bot
- Definir formato de notificación al dueño

---

### 4. Development (MVP)
- Reemplazar mocks con catálogo real
- Integrar captura de pedido → Google Sheets
- Agregar lógica de upsell (toallitas de bolsillo)
- Formulario completo: Nombre, Dirección, Teléfono

---

### 5. Validation
- Probar flujo completo con casos reales
- Verificar que pedidos llegan correctamente al dueño
- Identificar puntos de abandono

---

### 6. Deployment
- Conectar ManyChat con cuenta Instagram real
- Activar flujo y monitorear primeras 48h

---

### 7. Optimization
- Reducir abandono en formulario de captura
- Ajustar mensajes según feedback real

---

## Rules

- PROJECT_STATE overrides this
- Update only when direction changes
- Do not over-specify
