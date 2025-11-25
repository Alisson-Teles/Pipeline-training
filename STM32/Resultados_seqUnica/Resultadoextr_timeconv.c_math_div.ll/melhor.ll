; ModuleID = 'angha-ll-stm32f1/extr_timeconv.c_math_div.ll'
source_filename = "out/extr_timeconv.c_math_div.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @math_div(i64 %a, i64 %b) local_unnamed_addr addrspace(1) #0 {
body:
  %a.frozen = freeze i64 %a
  %b.frozen = freeze i64 %b
  %binop = sdiv i64 %a.frozen, %b.frozen
  %0 = mul i64 %binop, %b.frozen
  %binop7.decomposed = sub i64 %a.frozen, %0
  %binop7.lobit.neg = ashr i64 %binop7.decomposed, 63
  %binop8 = add i64 %binop7.lobit.neg, %binop
  ret i64 %binop8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
