onerror {quit -f}
vlib work
vlog -work work vgasync.vo
vlog -work work vgasync.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.vgasync_vlg_vec_tst
vcd file -direction vgasync.msim.vcd
vcd add -internal vgasync_vlg_vec_tst/*
vcd add -internal vgasync_vlg_vec_tst/i1/*
add wave /*
run -all
