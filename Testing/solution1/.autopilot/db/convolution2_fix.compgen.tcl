# This script segment is generated automatically by AutoPilot

set name master_fix_mul_20s_36s_55_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name master_fix_mul_21s_36s_55_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# Memory (RAM/ROM)  definition:
set ID 98
set hasByteEnable 0
set MemName master_fix_convolution2_fix_secondBias_f_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 21
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000101101110001010111" "010010101011001110011" "111100011101011010011" "000111111000101111110" "110100000100101011011" "110111001011100011110" "111100001111001000110" "101101000100010100110" "111100010000111101010" "001010010101010110110" "101100111010100110010" "101110100111000111111" "010001100110110001010" "000000011010101010001" "110000010101110001011" "111100001110001001001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 2.322
set ClkPeriod 10.5
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


# Memory (RAM/ROM)  definition:
set ID 99
set hasByteEnable 0
set MemName master_fix_convolution2_fix_secondKernel_f_V_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 20
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11100101010001100010" "00111011010000101111" "11011111111000010101" "00000000001011000101" "00001010011011101011" "11100101010101010001" "11001000111001111000" "00101111100110101100" "11111101100011001010" "00101100000001101110" "11110111011111100000" "00110001011001111100" "00000010101111001101" "11111010001100110100" "11111011110111001000" "11101100011111111001" "00001001001100100100" "11110011101110011101" "11100001101001000100" "11010100110010011101" "11101011110111000011" "11111010111110101010" "00001001000011101010" "00001101110101001000" "00010100000101010101" "00100101010001111010" "11111110110110111100" "00001100111100100001" "11101010111111111011" "11110001011100000001" "11011111001101011000" "00001111001101000100" "11101110001101001101" "00000111110101111110" "11110101110110001110" "11101010001100100001" "00010000111111101100" "11110101001111010100" "11110000100111001010" "11110101001111010100" "00000010001011101011" "00100011010111101110" "00001001010100111001" "11100110100000001100" "11100000101001011011" "11001101001011010110" "10111101111101111000" "00100000101011010101" "00011000010111100010" "00000101011001000011" "11111111110100100001" "11111001011000110110" "00001010101000110100" "11100000110100000111" "11100001110010011011" "11111010101000011111" "11110000111010010110" "00001000001001101000" "00000111010010011010" "11101011010011011110" "00001010111010101100" "00110000010010000101" "11111001000100011110" "11010110011010011101" "00011010011010001100" "00001010000011011000" "11011100111110010100" "11110010100110110100" "11100011100100001111" "11111100100110010111" "00000101101111010101" "11101000100000101110" "00010101110101010101" "01000000100011001101" "11011100000001001101" "00010100100110100100" "11111100111101100000" "11101010110100001110" "11100011100111000100" "11111010111010000111" "11111100100011111011" "11110010001110000010" "11111000010100100101" "11010101110101101100" "00011001010101101011" "00001001100011111011" "00000101110011101011" "00000111001111100000" "00000010101100010110" "11011100101111110100" "00000110000101011000" "00000100011100011101" "00011011010111011100" "11101100111000011101" "11111111001101111110" "11101110100011100111" "11111001110101100110" "11111001101110000010" "00000010001100100110" "00010001000000111101" "10001001111000001001" "11101110011110101001" "11111111101011100001" "00000001100111100111" "11110101001010110101" "00011011100000111011" "11111010110110011010" "11101001001001100100" "11101011000110010001" "00000000011110101010" "11111010100110100110" "00000001100011100001" "00000110011101010011" "00001000110101000000" "11100010111001000000" "11100000011000111101" "11100011100110101001" "11101111101100100111" "11101001001110011110" "00000101101100110000" "11110001111101110010" "00000010001111010100" "00001011100101111110" "00000110100000001001" "00010110010101101010" "00100001110010100100" "00010001001100000111" "11101110101101000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10.5
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


# Memory (RAM/ROM)  definition:
set ID 100
set hasByteEnable 0
set MemName master_fix_convolution2_fix_secondKernel_f_V_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 20
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10110111110000101110" "11001100110000111010" "10110001001110111100" "10111011001001000010" "11010100000010100101" "11000100101101011000" "11100001111111001111" "00000000011000000101" "00000111001000110001" "00001101011001100110" "11111010001010100001" "00000110100110010110" "11110000011110100111" "11111001111000100001" "11111100111111000110" "00001111001110001110" "11110000111101111101" "11110010111001000110" "11011011111100011100" "11110010011110011110" "11101111000110110000" "11110100000001000010" "11111111010101110011" "11110111000011100101" "00001000100101100100" "00111010010001111011" "11110110000110111110" "11101010100110100111" "00001011111101110100" "11111001010111101111" "11101010011010100001" "11111100100110101111" "11110001010100010110" "00000101011000111001" "11111111100101010100" "11101011011011010001" "11111111110001111100" "01100101101000101011" "00010111000001001101" "11100010001111110111" "11101000011010000010" "11011010111111111001" "11111111011010001110" "11100110001011111000" "11110110101111100111" "11011010100111010100" "11011110010101010001" "00011101101010101110" "00001110001100010010" "00001011010111110110" "00000101101101001101" "00110111101010110101" "00001100000101110101" "11100010000011100011" "11101001101010110011" "00010100011110010110" "11101101110100001010" "00011000001010111111" "11110000010101010111" "11111000011100010111" "11110101000011011100" "11111100011111110111" "00100111010110001011" "11100111000111001100" "11110000111111001100" "11110100110011110000" "11100100001010100100" "00000010110010001010" "11101111000110101101" "11101011001010010110" "00010100111111110100" "00101001001001011101" "11101011110011000111" "11100010001100100110" "10110101001011001110" "10111111010001001001" "11010101001100000110" "11101010010011001111" "11100110111111111010" "11011010011011010001" "11111111111111100011" "11010110000101110111" "00001010010100100101" "11010011010111100111" "00110000100011000111" "00000101010000110001" "00001011101011111111" "11110000100110010100" "00000110110110000000" "11101111000100001110" "00101110101111101100" "11110111100100110000" "00010101001001101101" "00001100011100010101" "00000000010000111000" "00000011101000101000" "00000100000011011100" "11110111100111110001" "00011010110001000110" "11111110110111110010" "10011110101100111110" "11100111011101100011" "11101110100110111110" "11111110111000001100" "01010001011001001101" "00000100011110100110" "11101010110111000111" "11011011001000011000" "00001011011000011000" "00000010011101110011" "11111100000010010001" "00010000101011101100" "00100111011000001011" "00011110111100101010" "11011110111000101100" "11011000111001100110" "11110000111010110001" "00010110001100111101" "00000110010011100101" "00011011100011000111" "11111000010100010101" "00000011101100101011" "00000110001010100111" "11111111100010110111" "00011010000101100001" "11110101010110100001" "11110100000110001101" "11110101011011011010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10.5
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


# Memory (RAM/ROM)  definition:
set ID 101
set hasByteEnable 0
set MemName master_fix_convolution2_fix_secondKernel_f_V_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 21
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000000101010000000111" "000001011000111010011" "111110100001010111011" "000000100111111110000" "111111001101110100101" "111101000101000110000" "111100101000110111100" "000011110000001000100" "111110100010010001011" "111111001010111110010" "111110011001101000000" "111111011011111111111" "111111101001011100110" "000000001100000010101" "000000101010001011010" "111110011110000011001" "111111010010000110110" "111111110011101000110" "111101101010011100010" "111011000001110011000" "111110001110011011111" "000000001110000010000" "111111100001110001001" "000000100111100000001" "111110010010110110111" "000011111001000111101" "000001011001011101111" "111100100100001000010" "111100110110101010001" "110101011010110100101" "110101110001000000011" "000000111100011010010" "111101101110110100110" "000001000011111111010" "111110000100101001001" "111111100011101001100" "111110111100101011101" "111110100111000001011" "111100110010100110100" "000011000111011000110" "000010011010011100100" "000000101010011111000" "000010011010010110101" "111110010111010001011" "000100110010110110001" "111100011100001010111" "111011011111010111001" "111010100010000000001" "111111000100110111011" "111110000110100101110" "111111010101111011000" "111110100110001000100" "111111101010100011010" "111011111010110001011" "111111001001101001010" "111101111100111101110" "000000000111011011011" "000000010100010110110" "111101100010010101111" "111101000101111000000" "111111010001101111110" "000001000000110100010" "111111101001101000001" "111011001010110100101" "000011100111100011001" "111111110110110100010" "111111101010100001101" "111111000011010110010" "000101101000011111101" "111110010110001000101" "111011110010010010010" "111001001101001100110" "000010011101100011000" "000110000100010001011" "111001111111000101001" "111111111100001100100" "000001101111001000001" "111110000000110001111" "111110000100110011001" "111111110111100001110" "111111110111101111111" "111111001111011010101" "111100101101000110010" "111110011100000000001" "111110100010110100100" "111110011011101000110" "111101111010101010110" "000111100101000111111" "111110011110010100010" "111011110000101000111" "000000101111100111010" "111101101100101011100" "111100101010111011101" "000010001110000000111" "000010101110010011010" "111110001010110010110" "111111011100110001010" "111101000010111011010" "000010100011011101100" "000000010011001000011" "111000010110101110001" "111100010011100101100" "111110000100111000100" "111111101010000101100" "000010110011000111011" "000011001111111111011" "000000101110110111110" "111110010010101100000" "110101111100101110110" "111110000110010000111" "111010111001111111010" "111111101000100101111" "000000001001010101010" "101110111001101111110" "000000110111011010001" "000011110001001100100" "111111110111111010111" "111101011000110000111" "111111110011001001011" "000000010011101111000" "111101110000010001110" "111110101010001001101" "111111001000111100000" "111111011001100001000" "000000000010000010101" "000000001001101001010" "111111111001000101101" "000001100001101011101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10.5
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


# Memory (RAM/ROM)  definition:
set ID 102
set hasByteEnable 0
set MemName master_fix_convolution2_fix_secondKernel_f_V_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 21
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000001110110001110001" "000000111000011110110" "000001001110010001010" "000000100000110011011" "000000000010101000001" "111110101011000000110" "111101010000000001010" "000000100001001100110" "111110110111011000111" "111111110011101001001" "111111110011011000111" "000000011111000110011" "000010101101111011011" "111111100111001000011" "111110000000100011000" "111110111100101011111" "001001110111010101111" "000000111000011010010" "111101101001110101010" "111100101111011000110" "000011100011101011001" "111111101110101001001" "111111101110000000101" "000001101011000100001" "111101111111101011111" "100111111001011100101" "111111000000101101111" "000001000000100001001" "111100001010110101110" "110101000111100101000" "110100010011000101110" "111110001100111100110" "111110010110011011001" "110110110100001011101" "111101000110001010111" "000000111000101111001" "111001111001100001000" "111101010100000010101" "111100001001011101011" "000011100011001110011" "000000100000001111001" "111110110111110011100" "111110011000111100110" "000000100000000111010" "000010000100010000001" "000100000100000001101" "000111101000001110010" "111100010111111110111" "111110101001101011010" "000000101000000001001" "111101011011100111010" "111101010111110110001" "111101010100100111011" "111101111001101110000" "111110100110100110000" "000000000001000000011" "000000011001001110011" "000001000100001111110" "111111011101001100011" "111101000011111000001" "000000010000011001110" "111111010111000101111" "000000000111101110000" "111001111000101011010" "000001000000001011101" "111100110010100110111" "000011011000100100011" "111101110001000000111" "000110011101100100001" "111010011000011011101" "111010100011111100011" "110101001101011100010" "000001001000000011110" "000011011001010010010" "111010000010100111000" "111111101100000100111" "000001101110100100000" "111111000010111111111" "000000000110101011010" "111111100000110110100" "111111000101110001011" "111001100101110100110" "000000001100000000100" "000001111001000000100" "000001010101001110101" "111101100000010011101" "111101101011001111101" "111011101100001101001" "111110011110000011110" "111101010101001000000" "111110010011000111111" "111100001101101001000" "111101110000000101101" "000010001100110000111" "000011011110110100011" "111101110010100100000" "111111101110101100100" "111011100110011101011" "111111000001100110010" "111110100100011101100" "111101100101001100101" "000010101110000101001" "000011110001101000110" "111111101000001100100" "111110010101100111111" "110100001100011000000" "000001000010100110111" "000001011110001001110" "110000000000110010011" "110001011000110101111" "110001011000010100011" "000000010011111110010" "111110011110011001010" "110000111111110001101" "000000000110101011111" "000001110110010011011" "111111110101110010001" "111011110111111110100" "000000011010000000001" "111101110111111111100" "111111000000111001000" "111100111010000010001" "000001110000111011011" "000010010011110101010" "111110001010100101001" "111111001010011101010" "000001011000100001100" "000001010010110111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10.5
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
    name m_0_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_0_0_0_0 \
    op interface \
    ports { m_0_0_0_0_address0 { O 9 vector } m_0_0_0_0_ce0 { O 1 bit } m_0_0_0_0_q0 { I 36 vector } m_0_0_0_0_address1 { O 9 vector } m_0_0_0_0_ce1 { O 1 bit } m_0_0_0_0_q1 { I 36 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_0_0_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name out_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_0 \
    op interface \
    ports { out_0_address0 { O 10 vector } out_0_ce0 { O 1 bit } out_0_we0 { O 1 bit } out_0_d0 { O 36 vector } } \
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


