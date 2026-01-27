%dw 2.0
output application/json
var a = [
  {
    "id": 1,
    "age": 18
  },
  {
    "id": 2,
    "age": 24
  }
]
---
payload map ((item, index) -> {
    id: item.id,
    name: item.name,
    age: (a filter ((item1, index1) -> (item1.id == item.id)) map ((item2, index1) -> item2.age) joinBy  "" )as Number
})