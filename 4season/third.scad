$fn=360;

//cabeza
translate([25,15,40]) cylinder(r1=4, r2=8, h=5, $fn=4);
translate([25,15,45]) cylinder(r1=8, r2=4, h=5, $fn=4);

//brazo derecho
translate([35,17,21]) rotate([-12,0,0]) cylinder(r=2, h=15);
translate([35,17,21]) rotate([10,0,0]) cylinder(r=2, h=12);
translate([35,17,21]) sphere(r=2);
//brazo izquierdo
translate([15,17,21]) rotate([-12.4,0,0]) cylinder(r=2, h=15);
translate([15,17,21]) rotate([42,0,0]) cylinder(r=2, h=12);
translate([15,17,21]) sphere(r=2);

//cuerpo
difference() {
    union() {
        translate([10,5,0]) cube([30,20,20]);
        translate([15,7.5,20]) cube([20,15,20]);
    }
    union() {
        translate([12,4,4]) cube([26,2,14]);
        translate([18,6.5,36]) rotate([-90,0,]) cylinder(r=2, h=2);
        translate([23,6.5,36]) rotate([-90,0,]) cylinder(r=2, h=2);
        translate([17,6.5,28]) cube([7,2,4]);
        translate([16,6.5,22]) cube([4,2,4]);
        translate([21,6.5,22]) cube([4,2,4]);
        translate([26,6.5,22]) cube([8,2,16]);
    }
}

//piernas
translate([5,0,0]) hull() {
    translate([0,25,5]) rotate([0,90,0]) cylinder(r=3, h=5);
    translate([0,20,10]) rotate([0,90,0]) cylinder(r=3, h=5);
    translate([0,5,5]) rotate([0,90,0]) cylinder(r=3, h=5);
}
translate([40,0,0]) hull() {
    translate([0,25,5]) rotate([0,90,0]) cylinder(r=3, h=5);
    translate([0,20,10]) rotate([0,90,0]) cylinder(r=3, h=5);
    translate([0,5,5]) rotate([0,90,0]) cylinder(r=3, h=5);
}

//peana
cube([50,30,2]);