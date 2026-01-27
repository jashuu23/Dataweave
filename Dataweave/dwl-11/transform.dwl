%dw 2.0
output application/json
---
payload.data splitBy  "" groupBy ((item, index) ->  item) mapObject ((value, key, index) -> {
    (key) : sizeOf(value)
}) pluck ((value, key, index) -> (key) ++ value ) joinBy  ""