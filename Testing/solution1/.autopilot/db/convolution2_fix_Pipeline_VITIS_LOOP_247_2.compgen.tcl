# This script segment is generated automatically by AutoPilot

set id 337
set name master_fix_mux_164_36_1_1_x
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
    id 355 \
    name out_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_0 \
    op interface \
    ports { out_0_address0 { O 4 vector } out_0_ce0 { O 1 bit } out_0_we0 { O 1 bit } out_0_d0 { O 35 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name parc_V_0_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_0_21_reload \
    op interface \
    ports { parc_V_0_21_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name parc_V_1_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_1_23_reload \
    op interface \
    ports { parc_V_1_23_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name parc_V_2_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_2_24_reload \
    op interface \
    ports { parc_V_2_24_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name parc_V_3_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_3_25_reload \
    op interface \
    ports { parc_V_3_25_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name parc_V_4_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_4_26_reload \
    op interface \
    ports { parc_V_4_26_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name parc_V_5_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_5_27_reload \
    op interface \
    ports { parc_V_5_27_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name parc_V_6_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_6_28_reload \
    op interface \
    ports { parc_V_6_28_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name parc_V_7_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_7_29_reload \
    op interface \
    ports { parc_V_7_29_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name parc_V_8_210_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_8_210_reload \
    op interface \
    ports { parc_V_8_210_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name parc_V_9_211_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_9_211_reload \
    op interface \
    ports { parc_V_9_211_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name parc_V_10_212_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_10_212_reload \
    op interface \
    ports { parc_V_10_212_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name parc_V_11_213_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_11_213_reload \
    op interface \
    ports { parc_V_11_213_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name parc_V_12_214_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_12_214_reload \
    op interface \
    ports { parc_V_12_214_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name parc_V_13_215_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_13_215_reload \
    op interface \
    ports { parc_V_13_215_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name parc_V_14_216_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_14_216_reload \
    op interface \
    ports { parc_V_14_216_reload { I 36 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name parc_V_15_217_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parc_V_15_217_reload \
    op interface \
    ports { parc_V_15_217_reload { I 36 vector } } \
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


