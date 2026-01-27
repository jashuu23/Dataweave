%dw 2.0
output application/json
---
// payload groupBy ((value, key) -> key) mapObject ((value, key, index) -> {
//       (key): valuesOf(value) joinBy  ";"
// })
payload groupBy ((value, key) -> key) mapObject ((value1, key1, index) -> {
      (key1): (value1 pluck ((value2, key2, index) -> value2)) joinBy ";"
})