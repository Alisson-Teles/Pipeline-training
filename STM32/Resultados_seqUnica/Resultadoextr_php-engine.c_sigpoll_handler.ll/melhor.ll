; ModuleID = 'angha-ll-stm32f1/extr_php-engine.c_sigpoll_handler.ll'
source_filename = "out/extr_php-engine.c_sigpoll_handler.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@sigpoll_cnt = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define void @sigpoll_handler(i32 %sig) local_unnamed_addr addrspace(1) #0 {
body:
  %loadleftv = load i32, ptr @sigpoll_cnt, align 4
  %binop = add i32 %loadleftv, 1
  store i32 %binop, ptr @sigpoll_cnt, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
