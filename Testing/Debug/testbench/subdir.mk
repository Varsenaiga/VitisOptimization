################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/file.cpp \
C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/main.cpp \
C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/utils.cpp 

OBJS += \
./testbench/file.o \
./testbench/main.o \
./testbench/utils.o 

CPP_DEPS += \
./testbench/file.d \
./testbench/main.d \
./testbench/utils.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/file.o: C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/file.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -ID:/Xilinx/Vitis_HLS/2021.1/include/etc -IC:/Users/tiago/AppData/Roaming/Xilinx/Vitis -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/systemc/include -ID:/Xilinx/Vitis_HLS/2021.1/include/ap_sysc -ID:/Xilinx/Vitis_HLS/2021.1/include -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/auto_cc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/file.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/main.o: C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -ID:/Xilinx/Vitis_HLS/2021.1/include/etc -IC:/Users/tiago/AppData/Roaming/Xilinx/Vitis -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/systemc/include -ID:/Xilinx/Vitis_HLS/2021.1/include/ap_sysc -ID:/Xilinx/Vitis_HLS/2021.1/include -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/auto_cc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/utils.o: C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/utils.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -ID:/Xilinx/Vitis_HLS/2021.1/include/etc -IC:/Users/tiago/AppData/Roaming/Xilinx/Vitis -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/systemc/include -ID:/Xilinx/Vitis_HLS/2021.1/include/ap_sysc -ID:/Xilinx/Vitis_HLS/2021.1/include -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/auto_cc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/utils.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


