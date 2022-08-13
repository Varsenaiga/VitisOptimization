#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void master_fix(short*, int*);
extern "C" void apatb_master_fix_hw(volatile void * __xlx_apatb_param_input, volatile void * __xlx_apatb_param_out) {
  // Collect __xlx_input__tmp_vec
  vector<sc_bv<16> >__xlx_input__tmp_vec;
  for (int j = 0, e = 384; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_input)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_input)[j*2+1];
    __xlx_input__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_input = 384;
  int __xlx_offset_param_input = 0;
  int __xlx_offset_byte_param_input = 0*2;
  short* __xlx_input__input_buffer= new short[__xlx_input__tmp_vec.size()];
  for (int i = 0; i < __xlx_input__tmp_vec.size(); ++i) {
    __xlx_input__input_buffer[i] = __xlx_input__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_out__tmp_vec
  vector<sc_bv<32> >__xlx_out__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_out)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_out)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_out)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_out)[j*4+3];
    __xlx_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_out = 4;
  int __xlx_offset_param_out = 0;
  int __xlx_offset_byte_param_out = 0*4;
  int* __xlx_out__input_buffer= new int[__xlx_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_out__tmp_vec.size(); ++i) {
    __xlx_out__input_buffer[i] = __xlx_out__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  master_fix(__xlx_input__input_buffer, __xlx_out__input_buffer);
// print __xlx_apatb_param_input
  sc_bv<16>*__xlx_input_output_buffer = new sc_bv<16>[__xlx_size_param_input];
  for (int i = 0; i < __xlx_size_param_input; ++i) {
    __xlx_input_output_buffer[i] = __xlx_input__input_buffer[i+__xlx_offset_param_input];
  }
  for (int i = 0; i < __xlx_size_param_input; ++i) {
    ((char*)__xlx_apatb_param_input)[i*2+0] = __xlx_input_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_input)[i*2+1] = __xlx_input_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_out
  sc_bv<32>*__xlx_out_output_buffer = new sc_bv<32>[__xlx_size_param_out];
  for (int i = 0; i < __xlx_size_param_out; ++i) {
    __xlx_out_output_buffer[i] = __xlx_out__input_buffer[i+__xlx_offset_param_out];
  }
  for (int i = 0; i < __xlx_size_param_out; ++i) {
    ((char*)__xlx_apatb_param_out)[i*4+0] = __xlx_out_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_out)[i*4+1] = __xlx_out_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_out)[i*4+2] = __xlx_out_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_out)[i*4+3] = __xlx_out_output_buffer[i].range(31, 24).to_uint();
  }
}
