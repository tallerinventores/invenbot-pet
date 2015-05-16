$fn=36;

translate([0,0,36.5]) resize(newsize=[30,30,35]) sphere(r=15);
difference() {
    union() {
        cylinder(r=20,h=25);
    }
    union() {
        translate([0,0,14]) rotate_extrude(convexity = 10) translate([27.8, 0, 0]) circle(r = 20);
        translate([0,0,-11]) difference() {
            cylinder(r=25, h=25);
            translate([0,0,-1]) cylinder(r=7.8,h=27);
        }
    }
}
intersection() {
    translate([-7.8,0,-1]) helix(2,15.6,2,16);
    translate([-9,-9,0]) cube([18,18,14]);
}

module helix(d1,w,h1,h2) {
    union() {
        for ( i = [0:(h1+d1):h2] ) {
            translate([0,0,i]) union() {
                rotate( a = -asin((d1+h1)/(2*w)), v=[0,1,0] ) {	
                    translate([w/2,0,0]) difference() {
                        rotate_extrude(convexity=10) translate([w/2,0,0]) circle(r=d1/2);
                        translate([0,-(w+d1)/4-0.1,0]) cube( size = [w+d1,(w+d1)/2,d1], center = true );
                    }
                }
                translate([0,0,h1+d1]) mirror([0,1,0]) mirror([0,0,1]) rotate( a = -asin((d1+h1)/(2*w)), v=[0,1,0] ) {
                    translate([w/2,0,0]) difference() {
                        rotate_extrude(convexity=10) translate([w/2,0,0]) circle(r=d1/2);
                        translate([0,-(w+d1)/4-0.1,0]) cube( size = [w+d1,(w+d1)/2,d1], center = true );
                    }
                }
            }	
        }
    }
}
