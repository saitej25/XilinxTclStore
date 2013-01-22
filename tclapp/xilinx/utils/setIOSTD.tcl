package require Vivado 2012.2

namespace eval ::tclapp::xilinx::utils {
    namespace export fixPorts
}

proc ::tclapp::xilinx::utils::fixPorts {} {
    # Summary : this proc will query the tool-chosen defaults from implementation
    # and "apply" them so it looks like the user did it from the beginning
    # complies with teh bit exprot restriction that all ios be LOCd and 
    # explicitly set to an IO Standard

    # Argument Usage:
    # none

    # Return Value:
    # none
    
    foreach port [get_ports] {
        set_property IOSTANDARD [get_property IOSTANDARD $port] $port
        set_property LOC [get_property LOC $port] $port
    }
}
