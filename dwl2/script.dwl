%dw 2.0
output application/json
---
sizeOf(payload.string scan /[^0-9]/)