let abs n = 
	if n > 0. then n
	else -.n;;
	
let grade mark =
	if ( mark >= 80 && mark <= 100 ) then 'A'
	else if ( mark >= 60) then 'B'
	else if ( mark >= 40) then 'C'
	else 'F';;