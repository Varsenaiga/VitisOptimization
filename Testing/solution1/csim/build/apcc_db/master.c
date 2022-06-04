/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */
extern float firstKernel[8][4][3];

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int master(signed int llvm_cbe_num);


/* Global Variable Definitions and Initialization */
float firstKernel[8][4][3] = { { { -0x1.ecd438p-4, -0x1.79bb8ep-8, 0x1.8de21ep-3 }, { -0x1.4e23acp-7, -0x1.4342e8p-4, 0x1.5bbc2ep-4 }, { -0x1.d0976ap-6, 0x1.4b72fcp-6, 0x1.55467cp-5 }, { 0x1.254eb4p-4, -0x1.5dbfc6p-4, -0x1.b41de2p-4 } }, { { 0x1.fa2d54p-6, -0x1.49390ep-3, -0x1.057a38p-1 }, { 0x1.e6fd98p-4, -0x1.3a918ep-3, -0x1.e9ddaep-5 }, { -0x1.b80a9p-3, 0x1.92e09cp-3, 0x1.62e742p-5 }, { -0x1.6ac17p-3, -0x1.b2bdp-3, -0x1.70129p-2 } }, { { 0x1.41b3ecp-3, -0x1.d410e4p-5, 0x1.0f78acp-3 }, { 0x1.549be6p-4, 0x1.64a674p-8, 0x1.84b96cp-4 }, { 0x1.1bf55ep-3, -0x1.25fc72p-3, -0x1.078f9p-5 }, { 0x1.1fbf4ep-4, -0x1.802b1p-4, -0x1.9bc55ap-3 } }, { { 0x1.bbf0c8p-4, 0x1.c2362p-3, -0x1.7324c6p-3 }, { 0x1.511578p-3, -0x1.4aa324p-4, -0x1.cb1238p-3 }, { 0x1.4908e8p-4, -0x1.0317f4p-3, -0x1.5ee20ep-4 }, { 0x1.85f978p-3, -0x1.550dd4p-4, -0x1.324cd2p-2 } }, { { -0x1.05800ep-2, -0x1.3092f2p-3, 0x1.09bc9cp-2 }, { -0x1.b56b44p-4, -0x1.7988d4p-5, 0x1.9189fap-3 }, { 0x1.090898p-3, -0x1.cd1d72p-6, -0x1.56d764p-3 }, { -0x1.fb0c84p-7, 0x1.c89476p-5, -0x1.9a790cp-2 } }, { { -0x1.71473cp-5, -0x1.1013b4p-2, -0x1.1070c8p-4 }, { -0x1.6c3524p-4, -0x1.dac3b6p-5, 0x1.265364p-5 }, { 0x1.74f412p-6, -0x1.665f9p-4, -0x1.3f840cp-3 }, { 0x1.b1a074p-6, -0x1.844b12p-3, -0x1.9dcc0ap-5 } }, { { 0x1.428226p-4, 0x1.9ae05ap-5, -0x1.86654p-4 }, { 0x1.629334p-4, -0x1.073efp-3, 0x1.26ad98p-5 }, { 0x1.0f4d66p-3, -0x1.3c5636p-4, -0x1.617e76p-3 }, { -0x1.808bd4p-7, -0x1.265384p-2, 0x1.f71fb6p-4 } }, { { -0x1.21036p-4, -0x1.3c94b8p-4, -0x1.6f281ep-2 }, { 0x1.3927f8p-5, -0x1.603e8p-5, -0x1.379dfp-7 }, { 0x1.cbcafap-4, 0x1.1cffcep-5, 0x1.44a2fcp-3 }, { -0x1.3ba608p-16, 0x1.010ac4p-3, 0x1.2feb8cp-2 } } };


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

signed int master(signed int llvm_cbe_num) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @master\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = shl nsw i32 %%num, 1, !dbg !3 for 0x%I64xth hint within @master  --> \n", ++aesl_llvm_cbe_3_count);
  llvm_cbe_tmp__1 = (unsigned int )llvm_cbe_num << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @master}\n");
  return llvm_cbe_tmp__1;
}

