difference() {
    cylinder(h=4, r=25/2, $fn=512);
    cylinder(h=10, r=2, $fn=64);
    translate([0, 0, 1.5]) cylinder(h=10, r=4, $fn=128);
}

translate([0, -50, 0]) rotate([90, 0, 0]) union() {
    union() {
        translate([5, -3, 3]) cube([2,6,25]);
        difference() {
            translate([7, -3, 3+15]) cube([4,6,10]);
            translate([11, -3, 3+15])rotate([0, -20, 0])  cube([10,6,15]);
        }
        
//        difference() {
//            translate([7, -3, 3+15]) cube([2,6,3]);
//            translate([9-3, -3, 3+15]) rotate([0, 45, 0])  cube([4,6,10]);
//        }
    }
    
    mirror([1, 0, 0]) union() {
        translate([5, -3, 3]) cube([2,6,25]);
        difference() {
            translate([7, -3, 3+15]) cube([4,6,10]);
            translate([11, -3, 3+15])rotate([0, -20, 0])  cube([10,6,15]);
        }
        
//        difference() {
//            translate([7, -3, 3+15]) cube([2,6,3]);
//            translate([9-3, -3, 3+15]) rotate([0, 45, 0])  cube([4,6,10]);
//        }
    }
    
    
    difference() {
        translate([-5, -3, 3]) cube([10,6,3]);
        cylinder(h=10, r=2, $fn=64);
    }
   
}