; ModuleID = 'C:/Users/tiago/AppData/Roaming/Xilinx/Vitis/Testing/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_fixed = type { %struct.ap_fixed_base }
%struct.ap_fixed_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i32 }

; Function Attrs: noinline
define void @apatb_master_fix_ir([3 x %struct.ap_fixed]* %input, [4 x %struct.ap_fixed]* %out) local_unnamed_addr #0 {
entry:
  %input_copy = alloca [128 x [3 x i32]], align 512
  %out_copy = alloca [1 x [4 x i32]], align 512
  %0 = bitcast [3 x %struct.ap_fixed]* %input to [128 x [3 x %struct.ap_fixed]]*
  %1 = bitcast [4 x %struct.ap_fixed]* %out to [1 x [4 x %struct.ap_fixed]]*
  call fastcc void @copy_in([128 x [3 x %struct.ap_fixed]]* %0, [128 x [3 x i32]]* nonnull align 512 %input_copy, [1 x [4 x %struct.ap_fixed]]* %1, [1 x [4 x i32]]* nonnull align 512 %out_copy)
  %2 = getelementptr [128 x [3 x i32]], [128 x [3 x i32]]* %input_copy, i32 0, i32 0
  %3 = getelementptr [1 x [4 x i32]], [1 x [4 x i32]]* %out_copy, i32 0, i32 0
  call void @apatb_master_fix_hw([3 x i32]* %2, [4 x i32]* %3)
  call fastcc void @copy_out([128 x [3 x %struct.ap_fixed]]* %0, [128 x [3 x i32]]* nonnull align 512 %input_copy, [1 x [4 x %struct.ap_fixed]]* %1, [1 x [4 x i32]]* nonnull align 512 %out_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([128 x [3 x %struct.ap_fixed]]* readonly, [128 x [3 x i32]]* noalias align 512, [1 x [4 x %struct.ap_fixed]]* readonly, [1 x [4 x i32]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed.133([128 x [3 x i32]]* align 512 %1, [128 x [3 x %struct.ap_fixed]]* %0)
  call fastcc void @onebyonecpy_hls.p0a1a4struct.ap_fixed([1 x [4 x i32]]* align 512 %3, [1 x [4 x %struct.ap_fixed]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed([128 x [3 x %struct.ap_fixed]]* noalias, [128 x [3 x i32]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [3 x %struct.ap_fixed]]* %0, null
  %3 = icmp eq [128 x [3 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr5.0.0.014.gep15 = getelementptr [128 x [3 x %struct.ap_fixed]], [128 x [3 x %struct.ap_fixed]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %5 = getelementptr [128 x [3 x i32]], [128 x [3 x i32]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr5.0.0.014.gep15, align 4
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

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1a4struct.ap_fixed([1 x [4 x i32]]* noalias align 512, [1 x [4 x %struct.ap_fixed]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [4 x i32]]* %0, null
  %3 = icmp eq [1 x [4 x %struct.ap_fixed]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [1 x [4 x i32]], [1 x [4 x i32]]* %0, i64 0, i64 0, i64 %for.loop.idx317
  %src.addr6.0.0.013.gep16 = getelementptr [1 x [4 x %struct.ap_fixed]], [1 x [4 x %struct.ap_fixed]]* %1, i64 0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %6 = load i32, i32* %src.addr6.0.0.013.gep16, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([128 x [3 x %struct.ap_fixed]]*, [128 x [3 x i32]]* noalias readonly align 512, [1 x [4 x %struct.ap_fixed]]*, [1 x [4 x i32]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed([128 x [3 x %struct.ap_fixed]]* %0, [128 x [3 x i32]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1a4struct.ap_fixed.127([1 x [4 x %struct.ap_fixed]]* %2, [1 x [4 x i32]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1a4struct.ap_fixed.127([1 x [4 x %struct.ap_fixed]]* noalias, [1 x [4 x i32]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [4 x %struct.ap_fixed]]* %0, null
  %3 = icmp eq [1 x [4 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr5.0.0.014.gep15 = getelementptr [1 x [4 x %struct.ap_fixed]], [1 x [4 x %struct.ap_fixed]]* %0, i64 0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %5 = getelementptr [1 x [4 x i32]], [1 x [4 x i32]]* %1, i64 0, i64 0, i64 %for.loop.idx317
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr5.0.0.014.gep15, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a128a3struct.ap_fixed.133([128 x [3 x i32]]* noalias align 512, [128 x [3 x %struct.ap_fixed]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [3 x i32]]* %0, null
  %3 = icmp eq [128 x [3 x %struct.ap_fixed]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [128 x [3 x i32]], [128 x [3 x i32]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr6.0.0.013.gep16 = getelementptr [128 x [3 x %struct.ap_fixed]], [128 x [3 x %struct.ap_fixed]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %6 = load i32, i32* %src.addr6.0.0.013.gep16, align 4
  store i32 %6, i32* %5, align 4
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

declare void @apatb_master_fix_hw([3 x i32]*, [4 x i32]*)

define void @master_fix_hw_stub_wrapper([3 x i32]*, [4 x i32]*) #4 {
entry:
  %2 = alloca [128 x [3 x %struct.ap_fixed]]
  %3 = alloca [1 x [4 x %struct.ap_fixed]]
  %4 = bitcast [3 x i32]* %0 to [128 x [3 x i32]]*
  %5 = bitcast [4 x i32]* %1 to [1 x [4 x i32]]*
  call void @copy_out([128 x [3 x %struct.ap_fixed]]* %2, [128 x [3 x i32]]* %4, [1 x [4 x %struct.ap_fixed]]* %3, [1 x [4 x i32]]* %5)
  %6 = bitcast [128 x [3 x %struct.ap_fixed]]* %2 to [3 x %struct.ap_fixed]*
  %7 = bitcast [1 x [4 x %struct.ap_fixed]]* %3 to [4 x %struct.ap_fixed]*
  call void @master_fix_hw_stub([3 x %struct.ap_fixed]* %6, [4 x %struct.ap_fixed]* %7)
  call void @copy_in([128 x [3 x %struct.ap_fixed]]* %2, [128 x [3 x i32]]* %4, [1 x [4 x %struct.ap_fixed]]* %3, [1 x [4 x i32]]* %5)
  ret void
}

declare void @master_fix_hw_stub([3 x %struct.ap_fixed]*, [4 x %struct.ap_fixed]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
