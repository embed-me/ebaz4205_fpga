set tcl_open [lindex $argv 0]

$tcl_open

write_hw_platform -fixed -include_bit -force -file ebaz4205_top.xsa

exit
