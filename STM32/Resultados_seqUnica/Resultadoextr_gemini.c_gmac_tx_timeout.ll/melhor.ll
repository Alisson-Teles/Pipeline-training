; ModuleID = 'angha-ll-stm32f1/extr_gemini.c_gmac_tx_timeout.ll'
source_filename = "out/extr_gemini.c_gmac_tx_timeout.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [11 x i8] c"Tx timeout\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @gmac_dump_dma_state(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @netdev_err(ptr, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @gmac_tx_timeout(ptr %netdev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @netdev_err(ptr %netdev, ptr nonnull @conststr, i32 zeroext 11)
  %1 = tail call addrspace(1) i32 @gmac_dump_dma_state(ptr %netdev)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
