let abs n = 
	if n > 0. then n
	else -.n;;
	
let grade mark =
	if (mark > 80 && mark <= 100) then 'A'
	else 'B';;