#include <hls_math.h>
#include <ap_fixed.h>
#include "master.h"

using namespace std;

typedef ap_fixed<32,13, AP_RND_CONV> fix1_t;
typedef ap_fixed<32,13> fix2_t;



void master(){

	float a = 3.1256;;
	fix1_t b = a;

	fix2_t c = b;

	b = hls::exp(c);

	cout << exp(a) << endl;
	cout << c.to_string(10) << endl;
	cout << b.to_string(10) << endl;

}
