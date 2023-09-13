onerror {quit -f}
vlib work
vlog -work work pinta_barras.vo
vlog -work work pinta_barras.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sincro_vga_vlg_vec_tst
vcd file -direction pinta_barras.msim.vcd
vcd add -internal sincro_vga_vlg_vec_tst/*
vcd add -internal sincro_vga_vlg_vec_tst/i1/*
add wave /*
run -all
