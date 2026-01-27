%dw 2.0
output application/json
---
{
  Even: payload filter ((item, index) -> isEven(item)),
  Odd : payload filter ((item1, index) -> isOdd(item1))
}