%dw 2.0
output application/json
---
payload.employeeDetails.apicentrics filter ((item, index) -> item.city.Place == "vjy") reduce ((item, accumulator) -> item )