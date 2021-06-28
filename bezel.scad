$fn=64;
difference() {
    union() {
        //roundedcube(20,10,0.3,1);
        //cube([20, 10, 0.3]);
        translate([0, 0, 0]) roundedcube(68, 35, 3, 2);
    }
    // voids
    // translate([  0.75, 0.75, -5]) cube([18.5, 8.5, 5]);
    translate([  11.5,    6.5,    -1]) cube([45,   22,   5]);
    
    // through-holes
    translate([ 4,   4, -1])  cylinder(5, 1, 1);
    translate([ 4,  31, -1])  cylinder(5, 1, 1);
    translate([ 64,   4, -1])  cylinder(5, 1, 1);
    translate([ 64,  31, -1])  cylinder(5, 1, 1);
}

module roundedcube(xdim, ydim, zdim, rdim) {
    hull() {
    translate([rdim, rdim, 0]) cylinder(r=rdim, h=zdim);
    translate([xdim-rdim, rdim, 0]) cylinder(r=rdim, h=zdim);

    translate([rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
    translate([xdim-rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
    }
}
