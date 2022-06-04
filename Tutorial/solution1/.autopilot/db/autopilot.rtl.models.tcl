set SynModuleInfo {
  {SRCNAME cpp_FIR MODELNAME cpp_FIR RTLNAME cpp_FIR IS_TOP 1
    SUBMODULES {
      {MODELNAME cpp_FIR_mul_16s_32s_32_1_1 RTLNAME cpp_FIR_mul_16s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cpp_FIR_fir1_shift_reg RTLNAME cpp_FIR_fir1_shift_reg BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cpp_FIR_CFir_int_int_int_c RTLNAME cpp_FIR_CFir_int_int_int_c BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cpp_FIR_flow_control_loop_pipe RTLNAME cpp_FIR_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cpp_FIR_flow_control_loop_pipe_U}
    }
  }
}
