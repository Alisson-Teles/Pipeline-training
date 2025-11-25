; ModuleID = 'angha-ll-stm32f1/extr_tg3.c_tg3_txcpu_pause.ll'
source_filename = "out/extr_tg3.c_tg3_txcpu_pause.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TX_CPU_BASE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tg3:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @tg3_pause_cpu(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @tg3_txcpu_pause(ptr %tp) local_unnamed_addr addrspace(1) #1 {
body:
  %TX_CPU_BASE = load i32, ptr @TX_CPU_BASE, align 4
  %0 = tail call addrspace(1) i32 @tg3_pause_cpu(ptr %tp, i32 %TX_CPU_BASE)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
