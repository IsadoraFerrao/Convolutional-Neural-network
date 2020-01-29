transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/caio/Documentos/FPGA/matrixCNNv2/convolution_1_pixel.vhd}
vcom -93 -work work {/home/caio/Documentos/FPGA/matrixCNNv2/convolution_n_pixels.vhd}
vcom -93 -work work {/home/caio/Documentos/FPGA/matrixCNNv2/img.vhd}
vcom -93 -work work {/home/caio/Documentos/FPGA/matrixCNNv2/filter.vhd}

