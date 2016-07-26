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

let rec count l i = match l with 
  |hd::tl -> (if hd=i then 1 else 0) + count tl i
  |[] -> 0;;

let rec length l = match l with
  |hd::tl -> 1 + length tl
  |[] -> 0;;

let rec lastVal l = match l with
  |hd::[] -> hd
  |hd::tl -> lastVal tl
  |[] -> -1;;


lastVal 1i3;;

let rec append l1 l2 = match (l1,l2) with
  |(_,[])-> l1
  |([],l2)-> l2
  |(hd::tl, l2)-> hd:: append tl l2;;

append li3 li2;;
