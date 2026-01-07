%dw 2.0
output application/json
---
// payload map ((item, index) -> {
//     Name : item.Name,
//     id : item.id,
//     salary : item.salary,
//     mobile : item.mobile,
//     place : "Daravaram"
// } )

payload map ((item, index) -> item ++ ("place": "Daravaram") )