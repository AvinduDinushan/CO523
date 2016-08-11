type point3d = {x:float ; y:float ; z:float}
type solid = 
    | Sphere of point3d * float
    | Cylinder of point3d * point3d * float
    | Cube of point3d * point3d

let volume (s:solid)= 
  let pi = 22./. 7. in
  let square x = x *. x in
  let cubic x = square x *. x in
    match s with
      | Sphere(c,r) -> 4. *. cubic r *. pi/. 3.
      | Cylinder(c1,c2,r)
        -> r*. r *. pi *. sqrt(square (c1.x -. c2.x) +. square(c1.y -. c2.y) +. square (c1.z -. c2.z))
      | Cube(p1,p2) -> cubic (float_of_int(abs(int_of_float(p1.x -. p2.x))))
