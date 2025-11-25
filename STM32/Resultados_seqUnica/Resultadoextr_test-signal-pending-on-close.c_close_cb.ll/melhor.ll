; ModuleID = 'angha-ll-stm32f1/extr_test-signal-pending-on-close.c_close_cb.ll'
source_filename = "out/extr_test-signal-pending-on-close.c_close_cb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@close_cb_called = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define void @close_cb(i32 %handle) local_unnamed_addr addrspace(1) #0 {
body:
  %loadleftv = load i32, ptr @close_cb_called, align 4
  %binop = add i32 %loadleftv, 1
  store i32 %binop, ptr @close_cb_called, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
