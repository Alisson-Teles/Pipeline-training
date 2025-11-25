; ModuleID = 'angha-ll-stm32f1/extr_timer.c_advance_time.ll'
source_filename = "out/extr_timer.c_advance_time.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@current_time = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define void @advance_time(i64 %ms) local_unnamed_addr addrspace(1) #0 {
body:
  %loadleftv = load i32, ptr @current_time, align 4
  %trunc = trunc i64 %ms to i32
  %binop = add i32 %loadleftv, %trunc
  store i32 %binop, ptr @current_time, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
