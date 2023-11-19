union() {
    difference() {
        union() {                
            
            difference() {
                cylinder(h=30, r=96, $fn=512);
                translate([0, 0, 0.75]) cylinder(h=100, r=96-1.5, $fn=512);
            }
            
            cylinder(h=14-0.75, r=91, $fn=16);
            
        }
        cylinder(h=200, r=91-1.5, $fn=16, center=true);
        translate([0, 0, 170]) rotate([0, 5, 0]) cube(size=300, center=true);
    }
    
    difference() {
        union() {
            translate([-50, 75, 0]) cube([100, 100, 0.75]);
            translate([-50, -175, 0]) cube([100, 100, 0.75]);
            translate([75, -50, 0]) cube([100, 100, 0.75]);
            translate([-175, -50, 0]) cube([100, 100, 0.75]);
            
            difference() {
                cylinder(h=3, r=12, $fn=256);
                cylinder(h=100, r=9, $fn=256, center=true);
                translate([-10, 10, 0]) cube(size=26, center=true);
            }
            
            rotate(45) translate([-5, -90, 0]) cube([10, 80, 1.5]);
            rotate(45) translate([-1.5, -90, 0]) cube([3, 80, 3]);
        }
        
        translate([-82.5, 0, -10]) cylinder(h=20, r=2, $fn=64);
        translate([82.5, 0, -10]) cylinder(h=20, r=2, $fn=64);
        translate([0, -82.5, -10]) cylinder(h=20, r=2, $fn=64);
        translate([0, 82.5, -10]) cylinder(h=20, r=2, $fn=64);
        
        translate([0, 0, -1])  difference() {
            cylinder(h=20, r=200, $fn=512);
            cylinder(h=100, r=96, $fn=512);
        }
    }
}


