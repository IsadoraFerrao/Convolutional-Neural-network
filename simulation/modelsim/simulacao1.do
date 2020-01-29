onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /convolution_n_pixels/clk
add wave -noupdate -radix unsigned /convolution_n_pixels/cv_n_o
add wave -noupdate /convolution_n_pixels/reset
add wave -noupdate -radix unsigned /convolution_n_pixels/input_matrix
add wave -noupdate -radix decimal /convolution_n_pixels/input_filter
add wave -noupdate -radix unsigned /convolution_n_pixels/img_address_a
add wave -noupdate -radix unsigned /convolution_n_pixels/img_address_b
add wave -noupdate -radix unsigned /convolution_n_pixels/filter_address_a
add wave -noupdate -radix unsigned /convolution_n_pixels/filter_address_b
add wave -noupdate -radix unsigned /convolution_n_pixels/img_out_a
add wave -noupdate -radix unsigned /convolution_n_pixels/img_out_b
add wave -noupdate -radix decimal /convolution_n_pixels/filter_out_a
add wave -noupdate -radix decimal /convolution_n_pixels/filter_out_b
add wave -noupdate -radix unsigned /convolution_n_pixels/reg_output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 319
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {827 ps}
