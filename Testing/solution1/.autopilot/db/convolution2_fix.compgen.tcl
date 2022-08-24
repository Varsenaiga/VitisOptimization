# This script segment is generated automatically by AutoPilot

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
    id 356 \
    name m_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_0 \
    op interface \
    ports { m_0_address0 { O 9 vector } m_0_ce0 { O 1 bit } m_0_q0 { I 36 vector } m_0_address1 { O 9 vector } m_0_ce1 { O 1 bit } m_0_q1 { I 36 vector } m_0_address2 { O 9 vector } m_0_ce2 { O 1 bit } m_0_q2 { I 36 vector } m_0_address3 { O 9 vector } m_0_ce3 { O 1 bit } m_0_q3 { I 36 vector } m_0_address4 { O 9 vector } m_0_ce4 { O 1 bit } m_0_q4 { I 36 vector } m_0_address5 { O 9 vector } m_0_ce5 { O 1 bit } m_0_q5 { I 36 vector } m_0_address6 { O 9 vector } m_0_ce6 { O 1 bit } m_0_q6 { I 36 vector } m_0_address7 { O 9 vector } m_0_ce7 { O 1 bit } m_0_q7 { I 36 vector } m_0_address8 { O 9 vector } m_0_ce8 { O 1 bit } m_0_q8 { I 36 vector } m_0_address9 { O 9 vector } m_0_ce9 { O 1 bit } m_0_q9 { I 36 vector } m_0_address10 { O 9 vector } m_0_ce10 { O 1 bit } m_0_q10 { I 36 vector } m_0_address11 { O 9 vector } m_0_ce11 { O 1 bit } m_0_q11 { I 36 vector } m_0_address12 { O 9 vector } m_0_ce12 { O 1 bit } m_0_q12 { I 36 vector } m_0_address13 { O 9 vector } m_0_ce13 { O 1 bit } m_0_q13 { I 36 vector } m_0_address14 { O 9 vector } m_0_ce14 { O 1 bit } m_0_q14 { I 36 vector } m_0_address15 { O 9 vector } m_0_ce15 { O 1 bit } m_0_q15 { I 36 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
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


