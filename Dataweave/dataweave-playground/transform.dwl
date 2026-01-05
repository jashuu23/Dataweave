%dw 2.0
output application/json
import * from dw::core::Strings
---
payload map ((item, index) -> {
    // firstName: (item.fullName splitBy " ")[0],
    // lastName : (item.fullName splitBy " ")[1],
    firstName: item.fullName substringBefore " ",
    lastName : item.fullName substringAfter " ",
    Address: item.city ++ "," ++ item.state ++ "," ++ item.postal ++ "," ++ item.country,
    // Address: valuesOf(item)[3 to 6] joinBy " ",
    // Address: (item pluck ((value, key, index) -> value))[3 to 6] joinBy " ",
    miles : item.miles,
    DateofJoin: item.joinedDate as Date as String{format: "dd-MMM-yyyy"}
})
