set_global_assignment -entity "qsyssystem" -library "lib_qsyssystem" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "qsyssystem" -library "lib_qsyssystem" -name IP_TOOL_VERSION "13.0sp1"
set_global_assignment -entity "qsyssystem" -library "lib_qsyssystem" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_qsyssystem" -name SPD_FILE [file join $::quartus(sip_path) "../../qsyssystem.spd"]
set_global_assignment -library "lib_qsyssystem" -name MISC_FILE [file join $::quartus(sip_path) "../../qsyssystem.qsys"]

set_global_assignment -library "lib_qsyssystem" -name MISC_FILE [file join $::quartus(sip_path) "qsyssystem.v"]
