; ModuleID = 'angha-ll-stm32f1/extr_pch_can.c_pch_can_release.ll'
source_filename = "out/extr_pch_can.c_pch_can_release.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PCH_CAN_NONE = local_unnamed_addr global i32 0
@PCH_CAN_STOP = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pch_can_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @pch_can_set_int_enables(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @pch_can_set_run_mode(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @pch_can_set_rx_all(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @pch_can_set_tx_all(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @pch_can_release(ptr %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %PCH_CAN_STOP = load i32, ptr @PCH_CAN_STOP, align 4
  %0 = tail call addrspace(1) i32 @pch_can_set_run_mode(ptr %priv, i32 %PCH_CAN_STOP)
  %PCH_CAN_NONE = load i32, ptr @PCH_CAN_NONE, align 4
  %1 = tail call addrspace(1) i32 @pch_can_set_int_enables(ptr %priv, i32 %PCH_CAN_NONE)
  %2 = tail call addrspace(1) i32 @pch_can_set_rx_all(ptr %priv, i32 0)
  %3 = tail call addrspace(1) i32 @pch_can_set_tx_all(ptr %priv, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
