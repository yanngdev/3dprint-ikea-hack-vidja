
   
rotate(-22.5) difference() {  
    union() {
            
        
        difference() {
            cylinder(h=30, r=96, $fn=512);
            translate([0, 0, 1.5]) cylinder(h=100, r=96-1.5, $fn=512);
        }
        
        difference() {
            cylinder(h=14-1.5, r=91, $fn=16);
            translate([0, 0, 1.5]) cylinder(h=14, r=91-1.5, $fn=16);
        }
    }
    
    translate([0, 0, 170]) rotate([0, 5, 0]) cube(size=300, center=true);
    
    cylinder(h=100, r=9, $fn=256, center=true);
    
    hull() {
        translate([40, 40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
         rotate(45) translate([40, -40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
        rotate(-45/2) translate([20, 20, 0]) cylinder(h=10, r=10, center=true, $fn=256);
    }
    
    hull() {
        translate([40, -40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
         rotate(45) translate([-40, -40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
        rotate(-45/2) translate([20, -20, 0]) cylinder(h=10, r=10, center=true, $fn=256);
    }
    
     hull() {
        translate([-40, 40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
         rotate(45) translate([40, 40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
         rotate(-45/2) translate([-20, 20, 0]) cylinder(h=10, r=10, center=true, $fn=256);
    }
    
    hull() {
        translate([-40, -40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
         rotate(45) translate([-40, 40, 0]) cylinder(h=10, r=10, center=true, $fn=256);
        rotate(-45/2) translate([-20, -20, 0]) cylinder(h=10, r=10, center=true, $fn=256);
    }
}