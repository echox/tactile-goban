$fn=90;

pin_length=9;
stone_r=10;

stone_convex(pin_length, stone_r);
translate([25,25,0])
    stone_concave(pin_length, stone_r);

module stone_convex(pin_length=9,stone_r=10) {
    union() {
        scale([1,1,0.5])
            sphere(r=stone_r);
        translate([0,0,0]) 
            cylinder(pin_length,r=3);
    }
}

module stone_concave(pin_length=9,stone_r=10) {

    difference() {
        stone_convex(pin_length,stone_r);
        
        translate([0,0,-4]) 
            sphere(r=8);       
    }
}