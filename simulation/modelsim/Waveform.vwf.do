vlog -work work /home/twig/Scratch/vgasync/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.vgasync_vlg_vec_tst
onerror {resume}
add wave {vgasync_vlg_vec_tst/i1/CLOCK_50}
add wave {vgasync_vlg_vec_tst/i1/VGA_B}
add wave {vgasync_vlg_vec_tst/i1/VGA_B[3]}
add wave {vgasync_vlg_vec_tst/i1/VGA_B[2]}
add wave {vgasync_vlg_vec_tst/i1/VGA_B[1]}
add wave {vgasync_vlg_vec_tst/i1/VGA_B[0]}
add wave {vgasync_vlg_vec_tst/i1/VGA_G}
add wave {vgasync_vlg_vec_tst/i1/VGA_G[3]}
add wave {vgasync_vlg_vec_tst/i1/VGA_G[2]}
add wave {vgasync_vlg_vec_tst/i1/VGA_G[1]}
add wave {vgasync_vlg_vec_tst/i1/VGA_G[0]}
add wave {vgasync_vlg_vec_tst/i1/VGA_HS}
add wave {vgasync_vlg_vec_tst/i1/VGA_HS[0]}
add wave {vgasync_vlg_vec_tst/i1/VGA_R}
add wave {vgasync_vlg_vec_tst/i1/VGA_R[3]}
add wave {vgasync_vlg_vec_tst/i1/VGA_R[2]}
add wave {vgasync_vlg_vec_tst/i1/VGA_R[1]}
add wave {vgasync_vlg_vec_tst/i1/VGA_R[0]}
add wave {vgasync_vlg_vec_tst/i1/VGA_VS}
add wave {vgasync_vlg_vec_tst/i1/VGA_VS[0]}
run -all
