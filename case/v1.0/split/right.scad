// Smallcat Split Keyboard Case - Right Half
// Tray-style case design

include <common.scad>

case_bottom(mirror_x(left_pcb_outline, pcb_max_x)) {
    connector_cutout(pcb_max_x - 5);
}
