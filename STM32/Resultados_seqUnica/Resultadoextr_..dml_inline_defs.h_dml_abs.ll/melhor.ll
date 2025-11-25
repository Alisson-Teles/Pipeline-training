; ModuleID = 'angha-ll-stm32f1/extr_..dml_inline_defs.h_dml_abs.ll'
source_filename = "out/extr_..dml_inline_defs.h_dml_abs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define double @dml_abs(double %a) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpf = fcmp ogt double %a, 0.000000e+00
  %binop = fneg double %a
  %common.ret.op = select i1 %cmpf, double %a, double %binop
  ret double %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
