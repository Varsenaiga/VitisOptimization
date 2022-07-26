# This script segment is generated automatically by AutoPilot

set id 1
set name master_fix_mux_164_12_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 12
set din0_signed 0
set din1_width 12
set din1_signed 0
set din2_width 12
set din2_signed 0
set din3_width 12
set din3_signed 0
set din4_width 12
set din4_signed 0
set din5_width 12
set din5_signed 0
set din6_width 12
set din6_signed 0
set din7_width 12
set din7_signed 0
set din8_width 12
set din8_signed 0
set din9_width 12
set din9_signed 0
set din10_width 12
set din10_signed 0
set din11_width 12
set din11_signed 0
set din12_width 12
set din12_signed 0
set din13_width 12
set din13_signed 0
set din14_width 12
set din14_signed 0
set din15_width 12
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 12
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
    id 13 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 9 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name tmp1_V_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_11_0_out \
    op interface \
    ports { tmp1_V_11_0_out { O 12 vector } tmp1_V_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name tmp1_V_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_10_0_out \
    op interface \
    ports { tmp1_V_10_0_out { O 12 vector } tmp1_V_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name tmp1_V_11_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_11_4_out \
    op interface \
    ports { tmp1_V_11_4_out { O 12 vector } tmp1_V_11_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name tmp1_V_11_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_11_6_out \
    op interface \
    ports { tmp1_V_11_6_out { O 12 vector } tmp1_V_11_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name tmp1_V_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_5_0_out \
    op interface \
    ports { tmp1_V_5_0_out { O 12 vector } tmp1_V_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name tmp1_V_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_4_0_out \
    op interface \
    ports { tmp1_V_4_0_out { O 12 vector } tmp1_V_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name tmp1_V_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_2_0_out \
    op interface \
    ports { tmp1_V_2_0_out { O 12 vector } tmp1_V_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name tmp1_V_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_1_0_out \
    op interface \
    ports { tmp1_V_1_0_out { O 12 vector } tmp1_V_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name tmp1_V_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_0_0_out \
    op interface \
    ports { tmp1_V_0_0_out { O 12 vector } tmp1_V_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name tmp1_V_11_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_11_9_out \
    op interface \
    ports { tmp1_V_11_9_out { O 12 vector } tmp1_V_11_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name tmp1_V_11_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_V_11_11_out \
    op interface \
    ports { tmp1_V_11_11_out { O 12 vector } tmp1_V_11_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name tmp2_V_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_11_0_out \
    op interface \
    ports { tmp2_V_11_0_out { O 12 vector } tmp2_V_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name tmp2_V_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_10_0_out \
    op interface \
    ports { tmp2_V_10_0_out { O 12 vector } tmp2_V_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name tmp2_V_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_9_0_out \
    op interface \
    ports { tmp2_V_9_0_out { O 12 vector } tmp2_V_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name tmp2_V_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_8_0_out \
    op interface \
    ports { tmp2_V_8_0_out { O 12 vector } tmp2_V_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name tmp2_V_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_7_0_out \
    op interface \
    ports { tmp2_V_7_0_out { O 12 vector } tmp2_V_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name tmp2_V_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_6_0_out \
    op interface \
    ports { tmp2_V_6_0_out { O 12 vector } tmp2_V_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name tmp2_V_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_5_0_out \
    op interface \
    ports { tmp2_V_5_0_out { O 12 vector } tmp2_V_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name tmp2_V_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_3_0_out \
    op interface \
    ports { tmp2_V_3_0_out { O 12 vector } tmp2_V_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name tmp2_V_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_2_0_out \
    op interface \
    ports { tmp2_V_2_0_out { O 12 vector } tmp2_V_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name tmp2_V_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_1_0_out \
    op interface \
    ports { tmp2_V_1_0_out { O 12 vector } tmp2_V_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name tmp2_V_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp2_V_0_0_out \
    op interface \
    ports { tmp2_V_0_0_out { O 12 vector } tmp2_V_0_0_out_ap_vld { O 1 bit } } \
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


