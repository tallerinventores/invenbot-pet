//!OpenSCAD


module brazos() {
  translate([0, 0, 10]){
    rotate([90, 90, 0]){
      union(){
        translate([1, -11, 7]){
          rotate([105, 0, 0]){
            cube([2, 2, 10], center=false);
          }
        }
        translate([1, -2, 7]){
          rotate([90, 0, 0]){
            cube([2, 2, 10], center=false);
          }
        }
        rotate([0, 0, 90]){
          translate([-2, -2, 9]){
            cube([2, 5, 2], center=false);
          }
        }
        translate([9, 0.5, -2]){
          rotate([0, 0, 105]){
            translate([-2, -2, 9]){
              cube([2, 5, 2], center=false);
            }
          }
        }
        translate([-8, 1.5, 2]){
          rotate([0, 0, 75]){
            translate([-2, -7, 7]){
              cube([2, 5, 2], center=false);
            }
          }
        }
        rotate([0, 0, 90]){
          translate([-2, -7, 7]){
            cube([2, 5, 2], center=false);
          }
        }
        translate([0, 0, 0]){
          translate([-3, 0, 0]){
            rotate([0, 0, 75]){
              translate([-2, -2, 5]){
                cube([2, 5, 2], center=false);
              }
            }
          }
        }
        rotate([0, 0, 90]){
          translate([-2, -2, 5]){
            cube([2, 5, 2], center=false);
          }
        }
      }
    }
  }
}
module cabeza() {
  difference(){
    union(){
      translate([0, 0, 8]){
        cube([11, 13, 10], center=false);
      }
      translate([0, 0, 2]){
        cube([3, 3, 6], center=false);
      }
      translate([8, 0, 2]){
        cube([3, 3, 6], center=false);
      }
      translate([0, 0, 1]){
        cube([11, 13, 4], center=false);
      }
      translate([11, 1, 7]){
        rotate([0, 90, 0]){
          cylinder(r1=2, r2=2, h=1, center=false);
        }
      }
      translate([-1, 1, 7]){
        rotate([0, 90, 0]){
          cylinder(r1=2, r2=2, h=1, center=false);
        }
      }
    }
    translate([5.5, 13, 13]){
      assign($fn=60){
        sphere(r=2);
      }
    }
  }
}
module pierna() {
  union(){
    difference(){
      hull(){
        translate([0, 0, 0]){
          cube([4, 1, 2], center=false);
        }
        translate([-1, 5, 0]){
          cube([6, 1, 2], center=false);
        }
      }
      translate([1, 4, 0]){
        cube([2, 2, 2], center=false);
      }
    }
    translate([1, 1, 1]){
      cube([2, 2, 10], center=false);
    }
    translate([1, 1, 10]){
      rotate([5, 0, 0]){
        cube([2, 2, 10], center=false);
      }
    }
  }
}
module cuerpo() {
  union(){
    translate([1, 1, 20]){
      rotate([0, 90, 0]){
        assign($fn=6){
          cylinder(r1=5, r2=5, h=11, center=false);
        }
      }
    }
    difference(){
      hull(){
        translate([0.5, -4, 20]){
          cube([12, 10, 1], center=false);
        }
        translate([2, -3, 30]){
          cube([9, 8, 1], center=false);
        }
      }
      translate([5.5, 5, 20]){
        cube([2, 1, 1], center=false);
      }
    }
    translate([6.5, 0, 31]){
      assign($fn=8){
        cylinder(r1=2, r2=2, h=1, center=false);
      }
    }
  }
}


union(){
  translate([9, 0, 0]){
    pierna();
  }
  pierna();
  cuerpo();
  translate([6, -5, 7]){
    rotate([270, 90, 0]){
      brazos();
    }
  }
  mirror([1,0,0]){
    translate([-7, -5, 7]){
      rotate([270, 90, 0]){
        brazos();
      }
    }
  }
  translate([1, -3, 31]){
    cabeza();
  }
}