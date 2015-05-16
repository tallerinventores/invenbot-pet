$fn=360;

translate([0,0,56.5]) cabeza();
translate([13.25,0,42]) rotate([-90,0,0]) brazo();
translate([-13.25,0,42]) rotate([-90,0,0]) brazo();
translate([0,0,27]) cuerpo();
translate([5,0,7]) pierna();
translate([-5,0,7]) pierna();
peana();
translate([-15,-35,46.5]) acc();

module acc() {
    cube([30,20,2]);
    cube([30,2,20]);
}

//cabeza
module cabeza() {
    sphere(10);
}

//brazo
module brazo() {
    sphere(4.5);
    translate([0,0,-20]) cylinder(h=20, r=4.5);
    translate([0,0,-20]) sphere(4.5);
}

//cuerpo
module cuerpo() {
    cylinder(h=20, r=10);
}

//pierna
module pierna() {
    cylinder(h=20, r=4.5);
    sphere(4.5);
}

//peana
module peana() {
    cylinder(h=3, r=10);
}

