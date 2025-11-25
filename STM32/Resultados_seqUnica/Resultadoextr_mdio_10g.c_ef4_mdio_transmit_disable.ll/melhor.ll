; ModuleID = 'angha-ll-stm32f1/extr_mdio_10g.c_ef4_mdio_transmit_disable.ll'
source_filename = "out/extr_mdio_10g.c_ef4_mdio_transmit_disable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MDIO_MMD_PMAPMD = local_unnamed_addr global i32 0
@MDIO_PMA_TXDIS = local_unnamed_addr global i32 0
@MDIO_PMD_TXDIS_GLOBAL = local_unnamed_addr global i32 0
@PHY_MODE_TX_DISABLED = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ef4_nic:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ef4_mdio_set_flag(ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @ef4_mdio_transmit_disable(ptr %efx) local_unnamed_addr addrspace(1) #1 {
body:
  %MDIO_MMD_PMAPMD = load i32, ptr @MDIO_MMD_PMAPMD, align 4
  %MDIO_PMA_TXDIS = load i32, ptr @MDIO_PMA_TXDIS, align 4
  %MDIO_PMD_TXDIS_GLOBAL = load i32, ptr @MDIO_PMD_TXDIS_GLOBAL, align 4
  %phy_mode3 = load i32, ptr %efx, align 4
  %PHY_MODE_TX_DISABLED = load i32, ptr @PHY_MODE_TX_DISABLED, align 4
  %binop = and i32 %PHY_MODE_TX_DISABLED, %phy_mode3
  %0 = tail call addrspace(1) i32 @ef4_mdio_set_flag(ptr nonnull %efx, i32 %MDIO_MMD_PMAPMD, i32 %MDIO_PMA_TXDIS, i32 %MDIO_PMD_TXDIS_GLOBAL, i32 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
