; ModuleID = 'angha-ll-stm32f1/extr_lm90.c_temp_from_u8.ll'
source_filename = "out/extr_lm90.c_temp_from_u8.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @temp_from_u8(i32 %val) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = mul i32 %val, 1000
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
