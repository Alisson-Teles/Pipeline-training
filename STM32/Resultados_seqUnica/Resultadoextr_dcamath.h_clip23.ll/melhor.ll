; ModuleID = 'angha-ll-stm32f1/extr_dcamath.h_clip23.ll'
source_filename = "out/extr_dcamath.h_clip23.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @av_clip_intp2(i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @clip23(i32 %a) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @av_clip_intp2(i32 %a, i32 23)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
