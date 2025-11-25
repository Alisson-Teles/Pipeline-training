; ModuleID = 'angha-ll-stm32f1/extr_asb100.c_IN_FROM_REG.ll'
source_filename = "out/extr_asb100.c_IN_FROM_REG.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext range(i32 0, -15) i32 @IN_FROM_REG(i32 %reg) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = shl i32 %reg, 4
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
