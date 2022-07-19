set SynModuleInfo {
  {SRCNAME convolution1_fix_Pipeline_VITIS_LOOP_221_1 MODELNAME convolution1_fix_Pipeline_VITIS_LOOP_221_1 RTLNAME master_fix_convolution1_fix_Pipeline_VITIS_LOOP_221_1
    SUBMODULES {
      {MODELNAME master_fix_mux_164_12_1_1 RTLNAME master_fix_mux_164_12_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_flow_control_loop_pipe_sequential_init RTLNAME master_fix_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME master_fix_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME convolution1_fix_Pipeline_Conv_loop MODELNAME convolution1_fix_Pipeline_Conv_loop RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop
    SUBMODULES {
      {MODELNAME master_fix_mux_124_12_1_1 RTLNAME master_fix_mux_124_12_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_36s_12s_36_2_1 RTLNAME master_fix_mul_36s_12s_36_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_0_0 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_0_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_0_1 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_0_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_0_2 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_0_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_1_0 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_1_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_1_1 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_1_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_1_2 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_1_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_2_0 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_2_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_2_1 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_2_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_2_2 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_2_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_1 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_2 RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V RTLNAME master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution1_fix MODELNAME convolution1_fix RTLNAME master_fix_convolution1_fix}
  {SRCNAME convolution2_fix MODELNAME convolution2_fix RTLNAME master_fix_convolution2_fix
    SUBMODULES {
      {MODELNAME master_fix_mul_20s_36s_55_2_1 RTLNAME master_fix_mul_20s_36s_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_21s_36s_55_2_1 RTLNAME master_fix_mul_21s_36s_55_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondBias_f_V RTLNAME master_fix_convolution2_fix_secondBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_1 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_0 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_2 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_3 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix_Pipeline_VITIS_LOOP_445_1 MODELNAME master_fix_Pipeline_VITIS_LOOP_445_1 RTLNAME master_fix_master_fix_Pipeline_VITIS_LOOP_445_1
    SUBMODULES {
      {MODELNAME master_fix_mux_42_36_1_1 RTLNAME master_fix_mux_42_36_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix_Pipeline_VITIS_LOOP_456_3 MODELNAME master_fix_Pipeline_VITIS_LOOP_456_3 RTLNAME master_fix_master_fix_Pipeline_VITIS_LOOP_456_3
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
      {MODELNAME master_fix_mul_7ns_9ns_15_1_1 RTLNAME master_fix_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_urem_7ns_3ns_2_11_seq_1 RTLNAME master_fix_urem_7ns_3ns_2_11_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mux_42_36_1_1_x RTLNAME master_fix_mux_42_36_1_1_x BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_19s_35ns_54_2_1 RTLNAME master_fix_mul_19s_35ns_54_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_thirdBias_f_V RTLNAME master_fix_thirdBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_firstDense_f_V RTLNAME master_fix_firstDense_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_secondDense_f_V RTLNAME master_fix_secondDense_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_conv1 RTLNAME master_fix_conv1 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_max1_V_0 RTLNAME master_fix_max1_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_conv2_0 RTLNAME master_fix_conv2_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_max2_V_0 RTLNAME master_fix_max2_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_den1_V_0 RTLNAME master_fix_den1_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
