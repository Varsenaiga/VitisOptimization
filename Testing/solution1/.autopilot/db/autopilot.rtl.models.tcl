set SynModuleInfo {
  {SRCNAME convolution1_fix_Pipeline_Initialization_Conv1_Loop MODELNAME convolution1_fix_Pipeline_Initialization_Conv1_Loop RTLNAME master_fix_convolution1_fix_Pipeline_Initialization_Conv1_Loop
    SUBMODULES {
      {MODELNAME master_fix_flow_control_loop_pipe_sequential_init RTLNAME master_fix_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME master_fix_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME convolution1_fix_Pipeline_Convolution1_loop MODELNAME convolution1_fix_Pipeline_Convolution1_loop RTLNAME master_fix_convolution1_fix_Pipeline_Convolution1_loop
    SUBMODULES {
      {MODELNAME master_fix_srem_17ns_3ns_3_21_1 RTLNAME master_fix_srem_17ns_3ns_3_21_1 BINDTYPE op TYPE srem IMPL auto LATENCY 20 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mux_124_12_1_1 RTLNAME master_fix_mux_124_12_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_36s_12s_36_2_1 RTLNAME master_fix_mul_36s_12s_36_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_mul_16s_17ns_34_4_1 RTLNAME master_fix_mul_mul_16s_17ns_34_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
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
  {SRCNAME convolution2_fix_Pipeline_Initialization_Conv2_Loop MODELNAME convolution2_fix_Pipeline_Initialization_Conv2_Loop RTLNAME master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop
    SUBMODULES {
      {MODELNAME master_fix_mux_164_36_1_1 RTLNAME master_fix_mux_164_36_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mux_325_36_1_1 RTLNAME master_fix_mux_325_36_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V RTLNAME master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix_Pipeline_Convolution2_loop MODELNAME convolution2_fix_Pipeline_Convolution2_loop RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop
    SUBMODULES {
      {MODELNAME master_fix_urem_6ns_3ns_2_10_1 RTLNAME master_fix_urem_6ns_3ns_2_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_6ns_8ns_13_1_1 RTLNAME master_fix_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_36s_36s_55_2_1 RTLNAME master_fix_mul_36s_36s_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_21s_36s_55_2_1 RTLNAME master_fix_mul_21s_36s_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
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
      {MODELNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_firstDense_f_V RTLNAME master_fix_convolution2_fix_Pipeline_Convolution2_loop_firstDense_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix_Pipeline_VITIS_LOOP_247_2 MODELNAME convolution2_fix_Pipeline_VITIS_LOOP_247_2 RTLNAME master_fix_convolution2_fix_Pipeline_VITIS_LOOP_247_2
    SUBMODULES {
      {MODELNAME master_fix_mux_164_36_1_1_x RTLNAME master_fix_mux_164_36_1_1_x BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix MODELNAME convolution2_fix RTLNAME master_fix_convolution2_fix}
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
      {MODELNAME master_fix_max1_V_0 RTLNAME master_fix_max1_V_0 BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_den1_0 RTLNAME master_fix_den1_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
