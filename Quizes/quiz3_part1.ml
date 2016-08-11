type point3d = {x:float ; y:float ; z:float}
type solid = 
    | Sphere of point3d * float
    | Cylinder of point3d * point3d * float
    | Cube of point3d * point3d

let volume (s:solid)= 
  let pi = 22./. 7. in
    match s with
      | Sphere(c,r) -> 4. *. (r ** 3.) *. pi/. 3.
      | Cylinder(c1,c2,r)
        -> r*. r *. pi *. sqrt(((c1.x -. c2.x) ** 2.) +. ((c1.y -. c2.y) ** 2.) +. ((c1.z -. c2.z) ** 2.))
      | Cube(p1,p2) -> float_of_int(abs(int_of_float(p1.x -. p2.x))) ** 3.
