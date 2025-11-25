; ModuleID = 'angha-ll-stm32f1/extr_cpcht.c_cpcht_route_interrupt.ll'
source_filename = "out/extr_cpcht.c_cpcht_route_interrupt.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @cpcht_route_interrupt(i32 %bus, i32 %dev, i32 returned %pin) local_unnamed_addr addrspace(1) #0 {
body:
  ret i32 %pin
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
