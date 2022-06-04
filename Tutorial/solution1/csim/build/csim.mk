# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../../../../../.Xilinx/vitis_hls/2021.1/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_template_fir_filter/cpp_FIR_test.cpp ../../../../../../../../.Xilinx/vitis_hls/2021.1/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_template_fir_filter/cpp_FIR.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vitis_HLS/2021.1
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vitis_HLS/2021.1/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/cpp_FIR_test.o: ../../../../../../../../.Xilinx/vitis_hls/2021.1/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_template_fir_filter/cpp_FIR_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../../.Xilinx/vitis_hls/2021.1/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_template_fir_filter/cpp_FIR_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/cpp_FIR_test.d

$(ObjDir)/cpp_FIR.o: ../../../../../../../../.Xilinx/vitis_hls/2021.1/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_template_fir_filter/cpp_FIR.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../../.Xilinx/vitis_hls/2021.1/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_template_fir_filter/cpp_FIR.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/cpp_FIR.d
