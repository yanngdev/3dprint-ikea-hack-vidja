
// link part
difference() {
    union() {
        translate([0, 0, 22]) difference() {
            union() {                    
                difference() {
                    cylinder(h=30, r=96, $fn=512);
                    translate([0, 0, 0.75]) cylinder(h=100, r=96-1.5, $fn=512);
                }
                
                 translate([0, 0, -22]) cylinder(h=22+14, r=91, $fn=16);
                
            }
            cylinder(h=200, r=91-1.5, $fn=16, center=true);
            translate([0, 0, 170]) rotate([0, 5, 0]) cube(size=300, center=true);
        }
        
         difference() {
            cylinder(h=22, r=96, $fn=512);
                cylinder(h=100, r=96-1.5, $fn=512, center=true);
        }
            
        difference() {
            translate([-4, -90, 37-4-14]) cube([8, 10, 14]);
            translate([-5, -91, 37-19]) rotate([-40,0,0]) cube([10, 10, 30]);
            translate([0, -85, 37-9]) cylinder(h=14, r=1.9, $fn=64);
        }


        difference() {
            translate([-4, 80, 37-4-14]) cube([8, 10, 14]);
            translate([-5+10, 91, 37-19]) rotate([-40,0,180]) cube([10, 10, 30]);
            translate([0, 85, 37-9]) cylinder(h=14, r=1.9, $fn=64);
        }
    }

    difference(){
        rotate([0,90,-90]) cylinder(h=200, r=5, center=true, $fn=64);
        
        translate([0, 100, 0]) cube(size=100, center=true);
    }

}

// bottom part
        translate([0, 0, 20]) translate([0, 0, 37-4]) difference() {
            union() { 
                difference() {
                    cylinder(h=4, r=12, $fn=256);
                    cylinder(h=100, r=9, $fn=256, center=true);
                }
                
                difference(){
                    translate([-4, -88.5, 0]) cube([8, 77.5, 1.5]);
                    translate([0, -85, -5]) cylinder(h=20, r=2, $fn=64, center=true);
                }
                    translate([-1.5, -80, 0]) cube([3, 70, 3]);
                    
                
                rotate(180) difference(){
                     translate([-4, -88.5, 0]) cube([8, 77.5, 1.5]);
                    translate([0, -85, -5]) cylinder(h=20, r=2, $fn=64, center=true);
                }
               
                rotate(180) translate([-1.5, -80, 0]) cube([3, 70, 3]);
            }
            
            translate([0, 0, -1])  difference() {
                cylinder(h=20, r=200, $fn=512);
                cylinder(h=100, r=96, $fn=512);
            }
        }
