$fn=60;

union(){
    translate([2, -1, 35]) cabeza();
    translate([2,1,19]) cuerpo();
    translate([10, 0, 0]) pierna();
    pierna();
}

module brazo() {
    union(){
        //brazo
        rotate([0, 0, -30]) translate([-3, 0, -3]) cube([3, 10, 3]);
        translate([sin(30)*4, cos(30)*10, -3]) cube([3, 10, 3]);
        translate([sin(30)*4, cos(30)*10+7, -3]) mano();
    }
}

module mano() {
    translate([-2,0,-2]) difference() {
        union() {
            cube([7,3,7]);
            cube([10,3,2.33]);
            translate([0,0,4.66]) cube([10,3,2.33]);
            translate([-3,0,2.33]) cube([10,3,2.33]);
            translate([10,0,0]) rotate([0,0,60]) cube([7,3,2.33]);
            translate([10,0,4.66]) rotate([0,0,75]) cube([7,3,2.33]);
            translate([-3,0,2.33]) rotate([0,0,-60]) translate([-7,0,0]) cube([7,3,2.33]);
        }
        translate([1.75,-1,1.75]) cube([3.5,5,3.5]);
    }
}

module cabeza() {
    difference(){
        union(){
            translate([0, 0, 8]) cube([11, 13, 10]);
            //boca
            translate([0, 0, 5]) cube(3);
            translate([8, 0, 5]) cube(3);
            translate([0, 0, 1]) cube([11, 13, 4]);
            //tuercas
            translate([11, 1.75, 6.5]) rotate([0, 90, 0]) cylinder(r=2, h=1, $fn=6);
            translate([-1, 1.75, 6.5]) rotate([0, 90, 0]) cylinder(r=2, h=1, $fn=6);
            translate([5.5, 2, -2]) cylinder(r=2, h=3, $fn=8);
        }
        union() {
            translate([5.5, 13, 13]) sphere(r=2); //ojo
        }
    }
}

module pierna() {
    union(){
        //pìerna
        translate([1, 0, 0]) cube([3, 3, 13]);
        translate([1, 3, 13]) rotate([15, 0, 0]) translate([0, -3, 0]) cube([3, 3, 10]);
        //pie
        translate([-0.5, 0, 0]) difference(){
            hull(){
                cube([6, 1, 3]);
                translate([-1, 9, 0]) cube([8, 1, 2]);
            }
            translate([1.5, 6, -1]) cube([3, 5, 5]);
        }
    }
}
module cuerpo() {
    union() {
        //base
        difference() {
            translate([0, 0, 5]) rotate([0, 90, 0]) cylinder(r=5, h=11, $fn=6);
            union() {
                translate([-1.5, 1.75, -6]) rotate([15, 0, 0]) translate([0, -3, 0]) cube([3.5, 3.5, 10]);
                translate([9, 1.75, -6]) rotate([15, 0, 0]) translate([0, -3, 0]) cube([3.5, 3.5, 10]);
            }
        }
        //tronco
        difference() {
            hull() {
                translate([-1, -4.33, 5]) cube([13, 10, 1]);
                translate([1, -4.33, 15]) cube([9, 8, 1]);
            }
            translate([4.5, 4.35, 4]) cube(2); //ombligo
            translate([5.5, 0, 14]) cylinder(r=2.5, h=3); //cuello
        }    
    }
    translate([10, -4.33, 14]) rotate([10, 0, 0]) brazo();
    mirror([1,0,0]) translate([-1, -3.5, 14]) rotate([-15, 0, 0]) brazo();
}
