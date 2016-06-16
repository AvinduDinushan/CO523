(* Going through the functions*)
let a = (not true) || false in
	let y = 10.0 in
		y > 0. && a;;
	(* result	: bool = false *)
		
(*Functions in functions*)
let square x = x * x in
	let quad x = square (square x) in 
		quad 2;;
	(* result : int = 16 *)
	
let sos x y =
	(square x) + (square y)
sos 2 3;;

(*
 * Solving the problem
 * (square 2) + (square 3)
 * (2*2) + (3*3)
 * 4 + 9
 *13
 *)

