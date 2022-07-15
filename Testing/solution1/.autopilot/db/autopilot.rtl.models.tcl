set SynModuleInfo {
  {SRCNAME convolution1_fix MODELNAME convolution1_fix RTLNAME master_fix_convolution1_fix
    SUBMODULES {
      {MODELNAME master_fix_mul_32s_18s_50_1_1 RTLNAME master_fix_mul_32s_18s_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_32s_19s_51_1_1 RTLNAME master_fix_mul_32s_19s_51_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_32s_20s_51_1_1 RTLNAME master_fix_mul_32s_20s_51_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_1_1 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_1_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstBias_f_V RTLNAME master_fix_convolution1_fix_firstBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_0_1 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_0_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_0_0 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_0_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_1_0 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_1_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_0_2 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_0_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_1_2 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_1_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_2_1 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_2_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_3_1 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_3_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_2_0 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_2_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_3_0 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_3_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_2_2 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_2_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution1_fix_firstKernel_f_V_3_2 RTLNAME master_fix_convolution1_fix_firstKernel_f_V_3_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convolution2_fix MODELNAME convolution2_fix RTLNAME master_fix_convolution2_fix
    SUBMODULES {
      {MODELNAME master_fix_mul_20s_32s_51_1_1 RTLNAME master_fix_mul_20s_32s_51_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_21s_32s_51_1_1 RTLNAME master_fix_mul_21s_32s_51_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondBias_f_V RTLNAME master_fix_convolution2_fix_secondBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_1 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_0 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_2 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_convolution2_fix_secondKernel_f_V_3 RTLNAME master_fix_convolution2_fix_secondKernel_f_V_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix_Pipeline_VITIS_LOOP_324_1 MODELNAME master_fix_Pipeline_VITIS_LOOP_324_1 RTLNAME master_fix_master_fix_Pipeline_VITIS_LOOP_324_1
    SUBMODULES {
      {MODELNAME master_fix_mux_42_32_1_1 RTLNAME master_fix_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_flow_control_loop_pipe_sequential_init RTLNAME master_fix_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME master_fix_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {exp<32, 13>} MODELNAME exp_32_13_s RTLNAME master_fix_exp_32_13_s
    SUBMODULES {
      {MODELNAME master_fix_mul_44ns_42ns_86_1_1 RTLNAME master_fix_mul_44ns_42ns_86_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_50ns_48ns_98_1_1 RTLNAME master_fix_mul_50ns_48ns_98_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_50ns_50ns_100_1_1 RTLNAME master_fix_mul_50ns_50ns_100_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_exp_32_13_s_f_x_msb_4_h_table_V RTLNAME master_fix_exp_32_13_s_f_x_msb_4_h_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_exp_32_13_s_f_x_msb_4_l_table_V RTLNAME master_fix_exp_32_13_s_f_x_msb_4_l_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_exp_32_13_s_f_x_msb_3_table_V RTLNAME master_fix_exp_32_13_s_f_x_msb_3_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_exp_32_13_s_f_x_msb_2_table_V RTLNAME master_fix_exp_32_13_s_f_x_msb_2_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_exp_32_13_s_exp_x_msb_1_table_V RTLNAME master_fix_exp_32_13_s_exp_x_msb_1_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix_Pipeline_VITIS_LOOP_335_3 MODELNAME master_fix_Pipeline_VITIS_LOOP_335_3 RTLNAME master_fix_master_fix_Pipeline_VITIS_LOOP_335_3
    SUBMODULES {
      {MODELNAME master_fix_sdiv_51ns_32s_32_55_1 RTLNAME master_fix_sdiv_51ns_32s_32_55_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 54 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME master_fix MODELNAME master_fix RTLNAME master_fix IS_TOP 1
    SUBMODULES {
      {MODELNAME master_fix_mul_7ns_9ns_15_1_1 RTLNAME master_fix_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_urem_7ns_3ns_2_11_seq_1 RTLNAME master_fix_urem_7ns_3ns_2_11_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mux_42_32_1_1_x RTLNAME master_fix_mux_42_32_1_1_x BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_mul_19s_31ns_50_1_1 RTLNAME master_fix_mul_19s_31ns_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_thirdBias_f_V RTLNAME master_fix_thirdBias_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_firstDense_f_V RTLNAME master_fix_firstDense_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_secondDense_f_V RTLNAME master_fix_secondDense_f_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_conv1_0_0_0 RTLNAME master_fix_conv1_0_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_max1_V_0 RTLNAME master_fix_max1_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_conv2_0_0_0_0 RTLNAME master_fix_conv2_0_0_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_max2_V_0 RTLNAME master_fix_max2_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME master_fix_den1_V_0 RTLNAME master_fix_den1_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
