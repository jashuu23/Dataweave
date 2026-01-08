%dw 2.0
output application/json
---
now().year - (payload.dob as Date { format : "dd/MM/yyyy"}).year