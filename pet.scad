$fn=100;

//cabeza
translate([0,0,57.5]) sphere(10);

//brazos
translate([13.25,0,47.5]) sphere(4.5);
translate([13.25,0,27.5]) cylinder(h=20, r=4.5);
translate([13.25,0,27.5]) sphere(4.5);
translate([-13.25,0,47.5]) sphere(4.5);
translate([-13.25,0,27.5]) cylinder(h=20, r=4.5);
translate([-13.25,0,27.5]) sphere(4.5);

//cuerpo
translate([0,0,27.5]) cylinder(h=20, r=10);

//piernas
translate([5,0,7.5]) cylinder(h=20, r=4.5);
translate([5,0,7.5]) sphere(4.5);
translate([-5,0,7.5]) cylinder(h=20, r=4.5);
translate([-5,0,7.5]) sphere(4.5);

//peana
cylinder(h=3, r=10);