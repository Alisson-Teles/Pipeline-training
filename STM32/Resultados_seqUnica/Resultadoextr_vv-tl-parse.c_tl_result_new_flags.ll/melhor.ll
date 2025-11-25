; ModuleID = 'angha-ll-stm32f1/extr_vv-tl-parse.c_tl_result_new_flags.ll'
source_filename = "out/extr_vv-tl-parse.c_tl_result_new_flags.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i32 0, 65536) i32 @tl_result_new_flags(i32 %old_flags) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = and i32 %old_flags, 65535
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
