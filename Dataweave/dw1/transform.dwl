%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    (key) : value mapObject ((value1, key1, index1) -> {
        (key1) : value1 map ((item, index) -> {
            name : item.name,
            employees : item.employees filter ((item, index) -> item.salary > 50000 )
        })
    })
})