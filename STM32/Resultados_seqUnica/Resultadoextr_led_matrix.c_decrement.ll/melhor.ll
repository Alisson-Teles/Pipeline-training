; ModuleID = 'angha-ll-stm32f1/extr_led_matrix.c_decrement.ll'
source_filename = "out/extr_led_matrix.c_decrement.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @MAX(i64, i64) local_unnamed_addr addrspace(1) #0

declare i64 @MIN(i32, i64) local_unnamed_addr addrspace(1) #0

define i64 @decrement(i64 %value, i64 %step, i64 %min, i64 %max) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = sub i64 %value, %step
  %0 = tail call addrspace(1) i32 @MAX(i64 %binop, i64 %min)
  %1 = tail call addrspace(1) i64 @MIN(i32 %0, i64 %max)
  ret i64 %1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
