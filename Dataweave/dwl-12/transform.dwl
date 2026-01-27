%dw 2.0
output application/json
---
payload map ((item, index) -> {
    id: item.id,
    code: item.code,
    //date_f: item.date_f as Date {format: "dd/MM/yyyy"} as String {format: "yyyy-MM-dd"},
    date_f: item.date_f as Date {format: "d/M/y"} as Date,
    date_: item.date_ as Date {format: "dd-MM-yyyy"} as String {format: "yyyy-MM-dd"}
} )