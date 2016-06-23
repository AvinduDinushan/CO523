let rec fibo (n:int) :int=
  if n=1 then 0
  else if n =2 then 1
  else fibo (n-1) + fibo (n-2) in

  fibo 5;;
