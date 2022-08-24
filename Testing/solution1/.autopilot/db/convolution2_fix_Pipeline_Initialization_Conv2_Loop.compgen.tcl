# This script segment is generated automatically by AutoPilot

set id 61
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 62
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 63
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 64
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 65
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 66
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 67
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 68
set name master_fix_mux_164_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 1
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 69
set name master_fix_mux_325_36_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 36
set din0_signed 0
set din1_width 36
set din1_signed 0
set din2_width 36
set din2_signed 0
set din3_width 36
set din3_signed 0
set din4_width 36
set din4_signed 0
set din5_width 36
set din5_signed 0
set din6_width 36
set din6_signed 0
set din7_width 36
set din7_signed 0
set din8_width 36
set din8_signed 0
set din9_width 36
set din9_signed 0
set din10_width 36
set din10_signed 0
set din11_width 36
set din11_signed 0
set din12_width 36
set din12_signed 0
set din13_width 36
set din13_signed 0
set din14_width 36
set din14_signed 0
set din15_width 36
set din15_signed 0
set din16_width 36
set din16_signed 0
set din17_width 36
set din17_signed 0
set din18_width 36
set din18_signed 0
set din19_width 36
set din19_signed 0
set din20_width 36
set din20_signed 0
set din21_width 36
set din21_signed 0
set din22_width 36
set din22_signed 0
set din23_width 36
set din23_signed 0
set din24_width 36
set din24_signed 0
set din25_width 36
set din25_signed 0
set din26_width 36
set din26_signed 0
set din27_width 36
set din27_signed 0
set din28_width 36
set din28_signed 0
set din29_width 36
set din29_signed 0
set din30_width 36
set din30_signed 0
set din31_width 36
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 36
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 102
set hasByteEnable 0
set MemName master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 21
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "010010011101010011011" "111101011110001001100" "000000101111011110010" "110100110000010010001" "110100000101100010110" "010100110010000001100" "111101011010101100011" "010010011010111100111" "111001110100101110111" "000010110011101010101" "001010000001100110110" "111100000001110110101" "111001001101101000010" "011001000011001001110" "111110111011011101100" "000100010010100100100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 2.322
set ClkPeriod 10.37
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name m_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_0 \
    op interface \
    ports { m_0_address0 { O 9 vector } m_0_ce0 { O 1 bit } m_0_q0 { I 36 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name parc_V_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_15_0_out \
    op interface \
    ports { parc_V_15_0_out { O 36 vector } parc_V_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name parc_V_14_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_14_0_out \
    op interface \
    ports { parc_V_14_0_out { O 36 vector } parc_V_14_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name parc_V_13_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_13_0_out \
    op interface \
    ports { parc_V_13_0_out { O 36 vector } parc_V_13_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name parc_V_12_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_12_0_out \
    op interface \
    ports { parc_V_12_0_out { O 36 vector } parc_V_12_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name parc_V_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_11_0_out \
    op interface \
    ports { parc_V_11_0_out { O 36 vector } parc_V_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name parc_V_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_10_0_out \
    op interface \
    ports { parc_V_10_0_out { O 36 vector } parc_V_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name parc_V_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_9_0_out \
    op interface \
    ports { parc_V_9_0_out { O 36 vector } parc_V_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name parc_V_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_8_0_out \
    op interface \
    ports { parc_V_8_0_out { O 36 vector } parc_V_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name parc_V_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_7_0_out \
    op interface \
    ports { parc_V_7_0_out { O 36 vector } parc_V_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name parc_V_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_6_0_out \
    op interface \
    ports { parc_V_6_0_out { O 36 vector } parc_V_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name parc_V_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_5_0_out \
    op interface \
    ports { parc_V_5_0_out { O 36 vector } parc_V_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name parc_V_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_4_0_out \
    op interface \
    ports { parc_V_4_0_out { O 36 vector } parc_V_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name parc_V_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_3_0_out \
    op interface \
    ports { parc_V_3_0_out { O 36 vector } parc_V_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name parc_V_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_2_0_out \
    op interface \
    ports { parc_V_2_0_out { O 36 vector } parc_V_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name parc_V_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_1_0_out \
    op interface \
    ports { parc_V_1_0_out { O 36 vector } parc_V_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name parc_V_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_0_0_out \
    op interface \
    ports { parc_V_0_0_out { O 36 vector } parc_V_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name tmp2_V_31_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_31_0_out \
    op interface \
    ports { tmp2_V_31_0_out { O 36 vector } tmp2_V_31_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name tmp2_V_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_30_0_out \
    op interface \
    ports { tmp2_V_30_0_out { O 36 vector } tmp2_V_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name tmp2_V_29_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_29_0_out \
    op interface \
    ports { tmp2_V_29_0_out { O 36 vector } tmp2_V_29_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name tmp2_V_28_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_28_0_out \
    op interface \
    ports { tmp2_V_28_0_out { O 36 vector } tmp2_V_28_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name tmp2_V_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_27_0_out \
    op interface \
    ports { tmp2_V_27_0_out { O 36 vector } tmp2_V_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name tmp2_V_26_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_26_0_out \
    op interface \
    ports { tmp2_V_26_0_out { O 36 vector } tmp2_V_26_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name tmp2_V_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_25_0_out \
    op interface \
    ports { tmp2_V_25_0_out { O 36 vector } tmp2_V_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name tmp2_V_24_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_24_0_out \
    op interface \
    ports { tmp2_V_24_0_out { O 36 vector } tmp2_V_24_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name tmp2_V_23_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_23_0_out \
    op interface \
    ports { tmp2_V_23_0_out { O 36 vector } tmp2_V_23_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name tmp2_V_22_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_22_0_out \
    op interface \
    ports { tmp2_V_22_0_out { O 36 vector } tmp2_V_22_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name tmp2_V_21_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_21_0_out \
    op interface \
    ports { tmp2_V_21_0_out { O 36 vector } tmp2_V_21_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name tmp2_V_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_20_0_out \
    op interface \
    ports { tmp2_V_20_0_out { O 36 vector } tmp2_V_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name tmp2_V_19_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_19_0_out \
    op interface \
    ports { tmp2_V_19_0_out { O 36 vector } tmp2_V_19_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name tmp2_V_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_18_0_out \
    op interface \
    ports { tmp2_V_18_0_out { O 36 vector } tmp2_V_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name tmp2_V_17_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_17_0_out \
    op interface \
    ports { tmp2_V_17_0_out { O 36 vector } tmp2_V_17_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name tmp2_V_16_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_16_0_out \
    op interface \
    ports { tmp2_V_16_0_out { O 36 vector } tmp2_V_16_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name tmp2_V_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_7_0_out \
    op interface \
    ports { tmp2_V_7_0_out { O 36 vector } tmp2_V_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name tmp2_V_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_6_0_out \
    op interface \
    ports { tmp2_V_6_0_out { O 36 vector } tmp2_V_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name tmp2_V_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_5_0_out \
    op interface \
    ports { tmp2_V_5_0_out { O 36 vector } tmp2_V_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name tmp2_V_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_4_0_out \
    op interface \
    ports { tmp2_V_4_0_out { O 36 vector } tmp2_V_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name tmp2_V_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_3_0_out \
    op interface \
    ports { tmp2_V_3_0_out { O 36 vector } tmp2_V_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name tmp2_V_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_2_0_out \
    op interface \
    ports { tmp2_V_2_0_out { O 36 vector } tmp2_V_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name tmp2_V_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_1_0_out \
    op interface \
    ports { tmp2_V_1_0_out { O 36 vector } tmp2_V_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name tmp2_V_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_0_0_out \
    op interface \
    ports { tmp2_V_0_0_out { O 36 vector } tmp2_V_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name tmp1_V_31_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_31_0_out \
    op interface \
    ports { tmp1_V_31_0_out { O 36 vector } tmp1_V_31_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name tmp1_V_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_30_0_out \
    op interface \
    ports { tmp1_V_30_0_out { O 36 vector } tmp1_V_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name tmp1_V_29_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_29_0_out \
    op interface \
    ports { tmp1_V_29_0_out { O 36 vector } tmp1_V_29_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name tmp1_V_28_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_28_0_out \
    op interface \
    ports { tmp1_V_28_0_out { O 36 vector } tmp1_V_28_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name tmp1_V_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_27_0_out \
    op interface \
    ports { tmp1_V_27_0_out { O 36 vector } tmp1_V_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name tmp1_V_26_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_26_0_out \
    op interface \
    ports { tmp1_V_26_0_out { O 36 vector } tmp1_V_26_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name tmp1_V_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_25_0_out \
    op interface \
    ports { tmp1_V_25_0_out { O 36 vector } tmp1_V_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name tmp1_V_24_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_24_0_out \
    op interface \
    ports { tmp1_V_24_0_out { O 36 vector } tmp1_V_24_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name tmp1_V_23_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_23_0_out \
    op interface \
    ports { tmp1_V_23_0_out { O 36 vector } tmp1_V_23_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name tmp1_V_22_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_22_0_out \
    op interface \
    ports { tmp1_V_22_0_out { O 36 vector } tmp1_V_22_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name tmp1_V_21_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_21_0_out \
    op interface \
    ports { tmp1_V_21_0_out { O 36 vector } tmp1_V_21_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name tmp1_V_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_20_0_out \
    op interface \
    ports { tmp1_V_20_0_out { O 36 vector } tmp1_V_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name tmp1_V_19_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_19_0_out \
    op interface \
    ports { tmp1_V_19_0_out { O 36 vector } tmp1_V_19_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name tmp1_V_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_18_0_out \
    op interface \
    ports { tmp1_V_18_0_out { O 36 vector } tmp1_V_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name tmp1_V_17_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_17_0_out \
    op interface \
    ports { tmp1_V_17_0_out { O 36 vector } tmp1_V_17_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name tmp1_V_16_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_16_0_out \
    op interface \
    ports { tmp1_V_16_0_out { O 36 vector } tmp1_V_16_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name tmp1_V_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_15_0_out \
    op interface \
    ports { tmp1_V_15_0_out { O 36 vector } tmp1_V_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name tmp1_V_14_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_14_0_out \
    op interface \
    ports { tmp1_V_14_0_out { O 36 vector } tmp1_V_14_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name tmp1_V_13_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_13_0_out \
    op interface \
    ports { tmp1_V_13_0_out { O 36 vector } tmp1_V_13_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name tmp1_V_12_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_12_0_out \
    op interface \
    ports { tmp1_V_12_0_out { O 36 vector } tmp1_V_12_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name tmp1_V_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_11_0_out \
    op interface \
    ports { tmp1_V_11_0_out { O 36 vector } tmp1_V_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name tmp1_V_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_10_0_out \
    op interface \
    ports { tmp1_V_10_0_out { O 36 vector } tmp1_V_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name tmp1_V_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_9_0_out \
    op interface \
    ports { tmp1_V_9_0_out { O 36 vector } tmp1_V_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name tmp1_V_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_8_0_out \
    op interface \
    ports { tmp1_V_8_0_out { O 36 vector } tmp1_V_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName master_fix_flow_control_loop_pipe_sequential_init_U
set CompName master_fix_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix master_fix_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


