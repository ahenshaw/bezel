$fn=64;
difference() {
    union() {
        //roundedcube(20,10,0.3,1);
        cube([20, 10, 0.3]);
        translate([-3, -1, -0.2]) 
            roundedcube(26, 12, 0.2, 1);
    }
    // voids
    translate([  0.75, 0.75, -5]) cube([18.5, 8.5, 5]);
    translate([  1,    1,    -1]) cube([18,   8,   5]);
    
    // through-holes
    translate([ -2,   0, -1])  cylinder(2, 0.3, 0.3);
    translate([ -2,  10, -1])  cylinder(2, 0.3, 0.3);
    translate([ 22,   0, -1])  cylinder(2, 0.3, 0.3);
    translate([ 22,  10, -1])  cylinder(2, 0.3, 0.3);
}
module roundedcube(xdim, ydim, zdim, rdim) {
    hull() {
    translate([rdim, rdim, 0]) cylinder(r=rdim, h=zdim);
    translate([xdim-rdim, rdim, 0]) cylinder(r=rdim, h=zdim);

    translate([rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
    translate([xdim-rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
    }
}
