; ModuleID = 'angha-ll-stm32f1/extr_seqmap-data.c_index_load_unsure.ll'
source_filename = "out/extr_seqmap-data.c_index_load_unsure.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @assert(i32) local_unnamed_addr addrspace(1) #0

define noundef i32 @index_load_unsure(i32 %left_len, ptr readnone captures(none) %left, i32 %right_len, ptr readnone captures(none) %right, i32 zeroext %left.size, i32 zeroext %right.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @assert(i32 0)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
