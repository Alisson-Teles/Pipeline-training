; ModuleID = 'angha-ll-stm32f1/extr_common.h_il_enable_rfkill_int.ll'
source_filename = "out/extr_common.h_il_enable_rfkill_int.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CSR_INT_BIT_RF_KILL = local_unnamed_addr global i32 0
@CSR_INT_MASK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"il_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @_il_wr(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @il_enable_rfkill_int(ptr %il) local_unnamed_addr addrspace(1) #1 {
body:
  %CSR_INT_MASK = load i32, ptr @CSR_INT_MASK, align 4
  %CSR_INT_BIT_RF_KILL = load i32, ptr @CSR_INT_BIT_RF_KILL, align 4
  %0 = tail call addrspace(1) i32 @_il_wr(ptr %il, i32 %CSR_INT_MASK, i32 %CSR_INT_BIT_RF_KILL)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
