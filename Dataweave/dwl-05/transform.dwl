%dw 2.0
output application/json
---
// payload filter ((item, index) -> item.age > 22) map ((item, index) -> {
//       (upper("age")) : item.age,
//       (upper("salary")) : item.salary
//   })
payload filter ((item, index) -> item.age>22) map ((item1, index1) -> item1 - "name" - "place" mapObject ((value, key, index) -> (upper(key)): value) )