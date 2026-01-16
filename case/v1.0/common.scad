// Smallcat Keyboard Case - Common Parameters and Modules
// Shared code for all case variants

// Parameters
wall_thickness = 2;        // Wall thickness in mm
case_depth = 8;            // Total case depth in mm
pcb_thickness = 1.6;       // PCB thickness in mm
pcb_clearance = 0.2;       // Clearance around PCB in mm
bottom_thickness = 2;      // Bottom plate thickness in mm

// Main case module - takes PCB outline, cutout passed as children()
module case_bottom(pcb_outline) {
    difference() {
        // Outer shell
        linear_extrude(height=case_depth)
            offset(r=wall_thickness + pcb_clearance)
                polygon(pcb_outline);

        // Inner cavity for PCB
        translate([0, 0, bottom_thickness])
            linear_extrude(height=case_depth)
                offset(r=pcb_clearance)
                    polygon(pcb_outline);

        // Cutout geometry passed as children
        children();
    }
}
