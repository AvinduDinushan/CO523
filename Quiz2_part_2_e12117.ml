type classroom = {grade : int; section:char};;
type student = {name: string; classIn: classroom};;

let same_grade (x:student) (y:student) = 
	if (x.classIn.grade = y.classIn.grade) then true
	else false;;
