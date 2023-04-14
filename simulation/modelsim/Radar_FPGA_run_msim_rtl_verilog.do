transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/AlteraPrj/Radar_FPGA {C:/AlteraPrj/Radar_FPGA/bin2bcd_sequential.v}
vlog -vlog01compat -work work +incdir+C:/AlteraPrj/Radar_FPGA {C:/AlteraPrj/Radar_FPGA/ip.v}
vlog -vlog01compat -work work +incdir+C:/AlteraPrj/Radar_FPGA {C:/AlteraPrj/Radar_FPGA/SONAR_DISPLAY.v}
vlog -vlog01compat -work work +incdir+C:/AlteraPrj/Radar_FPGA {C:/AlteraPrj/Radar_FPGA/servoControl.v}
vlog -vlog01compat -work work +incdir+C:/AlteraPrj/Radar_FPGA/db {C:/AlteraPrj/Radar_FPGA/db/ip_altpll.v}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/toBDC_DotON.vhd}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/toBDC_DotOFF.vhd}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/expandInput.vhd}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/counter.vhd}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/Distance_Calculation.vhd}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/TriggerGenerator.vhd}
vcom -93 -work work {C:/AlteraPrj/Radar_FPGA/RangeSensor.vhd}

