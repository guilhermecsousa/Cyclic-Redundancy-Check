onerror {exit -code 1}
vlib work
vcom -work work CRC_Checker.vho
vcom -work work testChecker.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.CRC_Checker_vhd_vec_tst
vcd file -direction CRC_Checker.msim.vcd
vcd add -internal CRC_Checker_vhd_vec_tst/*
vcd add -internal CRC_Checker_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

