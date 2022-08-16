set SynModuleInfo {
  {SRCNAME convolution1_fix_Pipeline_Initialization_Conv1_Loop MODELNAME convolution1_fix_Pipeline_Initialization_Conv1_Loop RTLNAME master_fix_convolution1_fix_Pipeline_Initialization_Conv1_Loop
    SUBMODULES {
      {MODELNAME master_fix_flow_control_loop_pipe_sequential_init RTLNAME master_fix_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME master_fix_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME convolution1_fix_Pipeline_Convolution1_loop MODELNAME convolution1_fix_Pipeline_Convolution1_loop RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop
    SUBMODULES {
      {MODELNAME master_fix_mux_124_12_1_1 RTLNAME master_fix_mux_124_12_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_36s_12s_36_2_1 RTLNAME master_fix_mul_36s_12s_36_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_0 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_2 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_1_0 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_1_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_1_1 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_1_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_1_2 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_1_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_2_0 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_2_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_2_1 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_2_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_2_2 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_2_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_3_0 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_3_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_3_1 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_3_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_3_2 RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_3_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstBias_f_V RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution1_fix MODELNAME convolution1_fix RTLNAME master_fix_convolution1_fix}
  {SRCNAME master_fix_Pipeline_MaxPool1_Loop1_MaxPool1_Loop2 MODELNAME master_fix_Pipeline_MaxPool1_Loop1_MaxPool1_Loop2 RTLNAME master_fix_master_fix_Pipeline_MaxPool1_Loop1_MaxPool1_Loop2
    SUBMODULES {
      {MODELNAME master_fix_urem_7ns_3ns_2_11_1 RTLNAME master_fix_urem_7ns_3ns_2_11_1 BINDTYPE op TYPE urem IMPL auto LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_7ns_9ns_15_1_1 RTLNAME master_fix_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix_Pipeline_Initialization_Conv2_Loop MODELNAME convolution2_fix_Pipeline_Initialization_Conv2_Loop RTLNAME master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop
    SUBMODULES {
      {MODELNAME master_fix_mux_164_36_1_1 RTLNAME master_fix_mux_164_36_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mux_325_36_1_1 RTLNAME master_fix_mux_325_36_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix_Pipeline_Convolution2_loop MODELNAME convolution2_fix_Pipeline_Convolution2_loop RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop
    SUBMODULES {
      {MODELNAME master_fix_mul_36s_36s_55_2_1 RTLNAME master_fix_mul_36s_36s_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_0 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_1 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_2 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_3 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_4 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_5 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_6 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_0 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_1 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_2 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_3 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_4 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_6 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_7 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_0 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_1 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_2 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_3 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_4 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_6 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_7 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_0 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_1 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_2 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_3 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_5 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_6 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_7 RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondBias_f_V RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix MODELNAME convolution2_fix RTLNAME master_fix_convolution2_fix}
  {SRCNAME master_fix_Pipeline_MaxPool2_Loop_Operations_MaxPool2_Loop MODELNAME master_fix_Pipeline_MaxPool2_Loop_Operations_MaxPool2_Loop RTLNAME master_fix_master_fix_Pipeline_MaxPool2_Loop_Operations_MaxPool2_Loop
    SUBMODULES {
      {MODELNAME master_fix_urem_6ns_3ns_2_10_1 RTLNAME master_fix_urem_6ns_3ns_2_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_6ns_8ns_13_1_1 RTLNAME master_fix_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense1_fix_Pipeline_Dense1_Loop1 MODELNAME dense1_fix_Pipeline_Dense1_Loop1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1
    SUBMODULES {
      {MODELNAME master_fix_mul_20s_35ns_55_2_1 RTLNAME master_fix_mul_20s_35ns_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_19s_35ns_54_2_1 RTLNAME master_fix_mul_19s_35ns_54_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_18s_35ns_53_2_1 RTLNAME master_fix_mul_18s_35ns_53_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_21s_35ns_55_2_1 RTLNAME master_fix_mul_21s_35ns_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_thirdBias_f_V RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_thirdBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_1_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_2_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_4_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_5_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_8_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_9_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_10_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_12_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_0 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_1 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_2 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_3 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_4 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_5 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_6 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_7 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_8 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_9 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_10 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_11 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_12 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_13 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_14 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_15 RTLNAME master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_13_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense1_fix MODELNAME dense1_fix RTLNAME master_fix_dense1_fix}
  {SRCNAME master_fix_Pipeline_Dense2_Loop MODELNAME master_fix_Pipeline_Dense2_Loop RTLNAME master_fix_master_fix_Pipeline_Dense2_Loop
    SUBMODULES {
      {MODELNAME master_fix_mux_42_36_1_1 RTLNAME master_fix_mux_42_36_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_36s_35ns_55_2_1 RTLNAME master_fix_mul_36s_35ns_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix_Pipeline_Initialization_SoftMax_Loop MODELNAME master_fix_Pipeline_Initialization_SoftMax_Loop RTLNAME master_fix_master_fix_Pipeline_Initialization_SoftMax_Loop}
  {SRCNAME master_fix_Pipeline_Operations_SoftMax_Loop MODELNAME master_fix_Pipeline_Operations_SoftMax_Loop RTLNAME master_fix_master_fix_Pipeline_Operations_SoftMax_Loop
    SUBMODULES {
      {MODELNAME master_fix_fptrunc_64ns_32_2_no_dsp_1 RTLNAME master_fix_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_ddiv_64ns_64ns_64_59_no_dsp_1 RTLNAME master_fix_ddiv_64ns_64ns_64_59_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 58 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_dexp_64ns_64ns_64_18_full_dsp_1 RTLNAME master_fix_dexp_64ns_64ns_64_18_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 17 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mux_42_64_1_1 RTLNAME master_fix_mux_42_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix MODELNAME master_fix RTLNAME master_fix IS_TOP 1
    SUBMODULES {
      {MODELNAME master_fix_dadd_64ns_64ns_64_7_full_dsp_1 RTLNAME master_fix_dadd_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_conv1 RTLNAME master_fix_conv1 BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_max1_V_0 RTLNAME master_fix_max1_V_0 BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_conv2_0 RTLNAME master_fix_conv2_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_max2_V_0 RTLNAME master_fix_max2_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_den1_0 RTLNAME master_fix_den1_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
