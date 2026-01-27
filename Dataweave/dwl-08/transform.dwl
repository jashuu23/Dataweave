%dw 2.0
output application/json
---
payload.dob as Date {format: "d/M/y"} as String {format: "d-M-y"}