%dw 2.0
output application/json
import * from dw::core::Strings
---
{
    zipCode: (payload.zipCode splitBy  "-")[0] as Number,
    //zipCode: (payload.zipCode substringBefore  "-") as Number,
    pincode: (payload.pincode splitBy  "-")[1] as Number,
    //pincode: (payload.pincode substringAfter    "-") as Number,
    name: flatten(payload.name scan /[A-Za-z]/) joinBy "",
    //name: payload.name replace  /["@","%","^","*"]/ with "",
    //name: payload.name replace  /[^A-Za-z]/ with "",
    //name: payload.name splitBy  "" filter ((item, index) -> item matches /[A-Za-z]/ ) joinBy  ""
}