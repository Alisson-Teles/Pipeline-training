; ModuleID = 'angha-ll-stm32f1/extr_pom.c_dtor.ll'
source_filename = "out/extr_pom.c_dtor.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PI = local_unnamed_addr global double 0.000000e+00

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @dtor(double %deg) local_unnamed_addr addrspace(1) #0 {
body:
  %PI = load double, ptr @PI, align 8
  %binop = fmul double %deg, %PI
  %binop3 = fdiv double %binop, 1.800000e+02
  ret double %binop3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
