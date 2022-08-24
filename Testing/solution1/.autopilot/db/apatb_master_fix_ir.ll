; ModuleID = 'C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/Testing/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_fixed.0 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i12 }

; Function Attrs: noinline
define void @apatb_master_fix_ir([3 x %struct.ap_fixed.0]* %input, [4 x float]* %out) local_unnamed_addr #0 {
entry:
  %input_copy = alloca [128 x [3 x i12]], align 512
  %out_copy = alloca [1 x [4 x float]], align 512
  %0 = bitcast [3 x %struct.ap_fixed.0]* %input to [128 x [3 x %struct.ap_fixed.0]]*
  %1 = bitcast [4 x float]* %out to [1 x [4 x float]]*
  call fastcc void @copy_in([128 x [3 x %struct.ap_fixed.0]]* %0, [128 x [3 x i12]]* nonnull align 512 %input_copy, [1 x [4 x float]]* %1, [1 x [4 x float]]* nonnull align 512 %out_copy)
  %2 = getelementptr [128 x [3 x i12]], [128 x [3 x i12]]* %input_copy, i32 0, i32 0
  %3 = getelementptr inbounds [1 x [4 x float]], [1 x [4 x float]]* %out_copy, i32 0, i32 0
  call void @apatb_master_fix_hw([3 x i12]* %2, [4 x float]* %3)
  call fastcc void @copy_out([128 x [3 x %struct.ap_fixed.0]]* %0, [128 x [3 x i12]]* nonnull align 512 %input_copy, [1 x [4 x float]]* %1, [1 x [4 x float]]* nonnull align 512 %out_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([128 x [3 x %struct.ap_fixed.0]]* readonly, [128 x [3 x i12]]* noalias align 512, [1 x [4 x float]]* readonly, [1 x [4 x float]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed.0([128 x [3 x i12]]* align 512 %1, [128 x [3 x %struct.ap_fixed.0]]* %0)
  call fastcc void @onebyonecpy_hls.p0a1a4f32([1 x [4 x float]]* align 512 %3, [1 x [4 x float]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed.0([128 x [3 x i12]]* noalias align 512, [128 x [3 x %struct.ap_fixed.0]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [3 x i12]]* %0, null
  %3 = icmp eq [128 x [3 x %struct.ap_fixed.0]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [128 x [3 x i12]], [128 x [3 x i12]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr6.0.0.013.gep16 = getelementptr [128 x [3 x %struct.ap_fixed.0]], [128 x [3 x %struct.ap_fixed.0]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %6 = bitcast i12* %src.addr6.0.0.013.gep16 to i16*
  %7 = load i16, i16* %6
  %8 = trunc i16 %7 to i12
  store i12 %8, i12* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1a4f32([1 x [4 x float]]* noalias align 512, [1 x [4 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [4 x float]]* %0, null
  %3 = icmp eq [1 x [4 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [1 x [4 x float]], [1 x [4 x float]]* %0, i64 0, i64 0, i64 %for.loop.idx311
  %5 = bitcast float* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [1 x [4 x float]], [1 x [4 x float]]* %1, i64 0, i64 0, i64 %for.loop.idx311
  %6 = bitcast float* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([128 x [3 x %struct.ap_fixed.0]]*, [128 x [3 x i12]]* noalias readonly align 512, [1 x [4 x float]]*, [1 x [4 x float]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed.0.72([128 x [3 x %struct.ap_fixed.0]]* %0, [128 x [3 x i12]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1a4f32([1 x [4 x float]]* %2, [1 x [4 x float]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed.0.72([128 x [3 x %struct.ap_fixed.0]]* noalias, [128 x [3 x i12]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [3 x %struct.ap_fixed.0]]* %0, null
  %3 = icmp eq [128 x [3 x i12]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr5.0.0.014.gep15 = getelementptr [128 x [3 x %struct.ap_fixed.0]], [128 x [3 x %struct.ap_fixed.0]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %5 = getelementptr [128 x [3 x i12]], [128 x [3 x i12]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %6 = bitcast i12* %5 to i16*
  %7 = load i16, i16* %6
  %8 = trunc i16 %7 to i12
  store i12 %8, i12* %dst.addr5.0.0.014.gep15, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_master_fix_hw([3 x i12]*, [4 x float]*)

define void @master_fix_hw_stub_wrapper([3 x i12]*, [4 x float]*) #5 {
entry:
  %2 = alloca [128 x [3 x %struct.ap_fixed.0]]
  %3 = bitcast [3 x i12]* %0 to [128 x [3 x i12]]*
  %4 = bitcast [4 x float]* %1 to [1 x [4 x float]]*
  call void @copy_out([128 x [3 x %struct.ap_fixed.0]]* %2, [128 x [3 x i12]]* %3, [1 x [4 x float]]* null, [1 x [4 x float]]* %4)
  %5 = bitcast [128 x [3 x %struct.ap_fixed.0]]* %2 to [3 x %struct.ap_fixed.0]*
  %6 = bitcast [1 x [4 x float]]* %4 to [4 x float]*
  call void @master_fix_hw_stub([3 x %struct.ap_fixed.0]* %5, [4 x float]* %6)
  call void @copy_in([128 x [3 x %struct.ap_fixed.0]]* %2, [128 x [3 x i12]]* %3, [1 x [4 x float]]* null, [1 x [4 x float]]* %4)
  ret void
}

declare void @master_fix_hw_stub([3 x %struct.ap_fixed.0]*, [4 x float]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
