; ModuleID = 'angha-ll-stm32f1/extr_timekeeping_internal.h_clocksource_delta.ll'
source_filename = "out/extr_timekeeping_internal.h_clocksource_delta.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @clocksource_delta(i32 %now, i32 %last, i32 %mask) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = sub i32 %now, %last
  %binop7 = and i32 %binop, %mask
  ret i32 %binop7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
