let rec fibo (n:int) :int=
  if n=1 then 0
  else if n =2 then 1
  else fibo (n-1) + fibo (n-2) in

  fibo 4;;
  (* Answer = 2*)

let rec fact n = 
  if n<=1 then 1 else n*fact(n-1) in
  fact 5;;
  (* Answer = 120*)

let rec func x n =
  if n = 0 then 1.0
  else x/.(float n)*.func (x) (n-1) +. func (x) (n-1) in
  func 1.0 10;;
  
  (*Havent Finished*)

let rec gcd x y = 
  if y=0 then x
  else gcd (y) (x mod y) in
  gcd 15 9;;
  
  (* Answer = 3*)

