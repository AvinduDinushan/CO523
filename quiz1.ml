let electricity_bill (units:int) :float =
  let total =
    if units <= 100 then units * 5
    else if units <= 200 then 500 + ((units-100) * 10)
    else 500 + 1000 + ((units-200) * 20) in
  let bill = float_of_int(total) *. 1.15 in
    bill +. 200.;;

electricity_bill 220;;

