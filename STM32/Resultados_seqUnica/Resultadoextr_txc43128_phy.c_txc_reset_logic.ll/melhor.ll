; ModuleID = 'angha-ll-stm32f1/extr_txc43128_phy.c_txc_reset_logic.ll'
source_filename = "out/extr_txc43128_phy.c_txc_reset_logic.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MDIO_MMD_PCS = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ef4_nic:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @txc_reset_logic_mmd(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @txc_reset_logic(ptr %efx) local_unnamed_addr addrspace(1) #1 {
body:
  %MDIO_MMD_PCS = load i32, ptr @MDIO_MMD_PCS, align 4
  %0 = tail call addrspace(1) i32 @txc_reset_logic_mmd(ptr %efx, i32 %MDIO_MMD_PCS)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
