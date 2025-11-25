; ModuleID = 'angha-ll-stm32f1/extr_udivmod.c___udivsi3.ll'
source_filename = "out/extr_udivmod.c___udivsi3.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i64 @udivmodsi4(i64, i64, i32) local_unnamed_addr addrspace(1) #0

define i64 @__udivsi3(i64 %a, i64 %b) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @udivmodsi4(i64 %a, i64 %b, i32 0)
  ret i64 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
