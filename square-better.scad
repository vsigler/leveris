$fn=30;

size = 80;
height = 3;
edge = 5;
text_shift = 16;

union() {
    translate([0, -text_shift, 0]) {
        cube([size, size + text_shift, height]);
    }
    translate([edge, edge, 0]) {
        difference() {
            cube([size - edge * 2, size - edge * 2, height * 2]);
            translate([height, height, 0]) {
                cube([size - edge * 2 - 6 , size - edge * 2 - 6, height * 2]);
            }
        }
    }
    //handle
    translate([size/2, size, 0]) {
        difference() {
            cylinder(r = 10, h = height);
            cylinder(r = 6, h = height);
        }
    }
}

translate([size/2, -5, 0]) {
    linear_extrude(height = 7) {
        //using spaces for spacing as spacing = 2 messes it up
        text(text = "B E T T E R", font = "Flama Basic", halign = "center", valign = "center", spacing = 1, size = 11);
    }
}