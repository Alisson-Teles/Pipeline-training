; ModuleID = 'angha-ll-stm32f1/extr_xgbe-dev.c_xgbe_is_last_desc.ll'
source_filename = "out/extr_xgbe-dev.c_xgbe_is_last_desc.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LD = local_unnamed_addr global i32 0
@TX_NORMAL_DESC3 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"xgbe_ring_desc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @XGMAC_GET_BITS_LE(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @xgbe_is_last_desc(ptr readonly captures(none) %rdesc) local_unnamed_addr addrspace(1) #1 {
body:
  %desc32 = load i32, ptr %rdesc, align 4
  %TX_NORMAL_DESC3 = load i32, ptr @TX_NORMAL_DESC3, align 4
  %LD = load i32, ptr @LD, align 4
  %0 = tail call addrspace(1) i32 @XGMAC_GET_BITS_LE(i32 %desc32, i32 %TX_NORMAL_DESC3, i32 %LD)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
