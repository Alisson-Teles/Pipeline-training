; ModuleID = 'angha-ll-stm32f1/extr_vfpdouble.c_vfp_double_fcmpe.ll'
source_filename = "out/extr_vfpdouble.c_vfp_double_fcmpe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @vfp_compare(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @vfp_double_fcmpe(i32 %dd, i32 %unused, i32 %dm, i32 %fpscr) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @vfp_compare(i32 %dd, i32 1, i32 %dm, i32 %fpscr)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
