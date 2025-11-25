; ModuleID = 'angha-ll-stm32f1/extr_mite.h_MITE_CHCR.ll'
source_filename = "out/extr_mite.h_MITE_CHCR.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @CHAN_OFFSET(i32) local_unnamed_addr addrspace(1) #0

define i32 @MITE_CHCR(i32 %channel) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @CHAN_OFFSET(i32 %channel)
  %binop = add i32 %0, 4
  ret i32 %binop
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
