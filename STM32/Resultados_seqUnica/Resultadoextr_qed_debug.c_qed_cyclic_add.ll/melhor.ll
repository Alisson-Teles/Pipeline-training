; ModuleID = 'angha-ll-stm32f1/extr_qed_debug.c_qed_cyclic_add.ll'
source_filename = "out/extr_qed_debug.c_qed_cyclic_add.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @qed_cyclic_add(i32 %a, i32 %b, i32 %size) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = add i32 %b, %a
  %binop7 = srem i32 %binop, %size
  ret i32 %binop7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
