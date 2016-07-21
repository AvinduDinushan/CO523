type list=
    |Cons of int*list
    |Empty;;

let l0 = Empty;;
let l1 = Cons(1,Empty);;
let l2 = Cons(2,l1);;
let l3 = Cons(3,l2);;

let rec contains (l:list) (i:int) :bool=
  match l with
    |Cons(hd,tl) -> if hd=i then true else contains tl i
    |Empty->false;;

contains l2 1;;

contains l2 4;;

let li0=[];;
let li1=1::[];;
let li2=2::li1;;

let li3=[1;2;3];;

let rec contains l i=
  match l with
    |hd::tl -> if hd=i then true else contains tl i
    |[] -> false;;
