################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/master.cpp \
C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/model_functions.cpp 

OBJS += \
./source/master.o \
./source/model_functions.o 

CPP_DEPS += \
./source/master.d \
./source/model_functions.d 


# Each subdirectory must supply rules for building sources it contributes
source/master.o: C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/master.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Xilinx/Vitis_HLS/2021.1/include/etc -IC:/Users/tiago/AppData/Roaming/Xilinx/Vitis -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/systemc/include -ID:/Xilinx/Vitis_HLS/2021.1/include/ap_sysc -ID:/Xilinx/Vitis_HLS/2021.1/include -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/model_functions.o: C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/model_functions.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Xilinx/Vitis_HLS/2021.1/include/etc -IC:/Users/tiago/AppData/Roaming/Xilinx/Vitis -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/systemc/include -ID:/Xilinx/Vitis_HLS/2021.1/include/ap_sysc -ID:/Xilinx/Vitis_HLS/2021.1/include -ID:/Xilinx/Vitis_HLS/2021.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


