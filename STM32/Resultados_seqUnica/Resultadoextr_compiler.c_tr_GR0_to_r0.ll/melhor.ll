; ModuleID = 'angha-ll-stm32f1/extr_compiler.c_tr_GR0_to_r0.ll'
source_filename = "out/extr_compiler.c_tr_GR0_to_r0.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @tr_mov16(i32, i32) local_unnamed_addr addrspace(1) #0

define void @tr_GR0_to_r0(i32 %op) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @tr_mov16(i32 0, i32 65535)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
