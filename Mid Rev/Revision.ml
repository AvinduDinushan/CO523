(* Basic Concepts *)
1+2*3;;
1<3;;
true || false;;
let str = "Avindu" in
  str ^ " Dinushan";;

(* Type Conversion *)
float 1 +. 2.3;;
int_of_float 2.4;;
float_of_int 5;;
string_of_int 5;;
string_of_float 3.4;;
int_of_string "55";;
float_of_string "32.5";;

(* gloabl scope and local scope *)

let pi = 3.14;;

pi*.7.;;

let newPI = 3.15 in
  newPI *. 7.;;
(*newPI value will not be exist after above line*)

(* Functions *)

let square (x:int) :int =
  x * x;;
square 5;;

let mul x y= 
  x * y;;

mul 5 2;;

(* bottom-up approch *)

let sum_of_squares x y = 
  square x + square y;;

sum_of_squares 5 10;;

let abs x =
  if x > 0 then x
  else if x = 0 then 0
  else -1 * x;;

abs (-10);;

(* Evaluation 
 * let abs -10 =
 *   if -10 > 0 then -10
 *   else if -10 = 0 then 0
 *   else -1 * (-10)
 *
 * let abs -10 = 
 *   if false
 *   else if false
 *   else 10
 *
 * abs (-10) = 10
*)


(* Recursion *)

let rec fact n =
  if n >2 then n * fact (n-1) else 1;;

fact 5;;

let rec fibo n =
  if n > 1 then fibo (n-1) + fibo (n-2) else n;;

fibo 3;;

let rec exp x y = 
  if y = 1 then x
  else x * exp x (y-1);;

exp 5 2;;

(* Tuples And Records *)
(* Dot Product *)

let dot_product v1 v2 =
  let (x1,y1,z1) = v1 in
  let (x2,y2,z2) = v2 in
    x1 *. x2 +. y1 *.y2 +. z1 *. z2;;

dot_product (2.,1.,4.) (2.5,1.,1.5);;

(* determinate of 2 * 2 matrix *)
let determinate r1 r2 = 
  let (a1,a2) = r1 in
  let (a3,a4) = r2 in
    abs (a1 * a4 - a2 * a3);;

determinate (4,1) (1,2);;

(* Records *)

type person = {firstname: string ; lastname:string};;

let get_name name =
  name.lastname ^ ", " ^ name.firstname;;

let my_name = {firstname = "Avindu" ; lastname = "Dinushan"};;

get_name my_name;;

type staff = { name:string ; salary:int ; married:bool};;

let add_salary member amount = 
  member.salary + amount;;

add_salary {name = "Avindu" ; salary = 10000 ; married = false} 5000;;

