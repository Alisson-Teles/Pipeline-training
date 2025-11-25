; ModuleID = 'angha-ll-stm32f1/extr_microtek.c_mts_slave_configure.ll'
source_filename = "out/extr_microtek.c_mts_slave_configure.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"scsi_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @blk_queue_dma_alignment(i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mts_slave_configure(ptr readonly captures(none) %s) local_unnamed_addr addrspace(1) #1 {
body:
  %request_queue2 = load i32, ptr %s, align 4
  %0 = tail call addrspace(1) i32 @blk_queue_dma_alignment(i32 %request_queue2, i32 511)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
