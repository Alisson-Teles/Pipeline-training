; ModuleID = 'angha-ll-stm32f1/extr_norm_desc.c_ndesc_enable_tx_timestamp.ll'
source_filename = "out/extr_norm_desc.c_ndesc_enable_tx_timestamp.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TDES1_TIME_STAMP_ENABLE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dma_desc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cpu_to_le32(i32) local_unnamed_addr addrspace(1) #1

define void @ndesc_enable_tx_timestamp(ptr captures(none) %p) local_unnamed_addr addrspace(1) #1 {
body:
  %loadleftv = load i32, ptr %p, align 4
  %TDES1_TIME_STAMP_ENABLE = load i32, ptr @TDES1_TIME_STAMP_ENABLE, align 4
  %0 = tail call addrspace(1) i32 @cpu_to_le32(i32 %TDES1_TIME_STAMP_ENABLE)
  %binop = or i32 %0, %loadleftv
  store i32 %binop, ptr %p, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
