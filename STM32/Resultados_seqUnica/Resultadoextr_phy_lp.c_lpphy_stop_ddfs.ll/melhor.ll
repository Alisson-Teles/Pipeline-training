; ModuleID = 'angha-ll-stm32f1/extr_phy_lp.c_lpphy_stop_ddfs.ll'
source_filename = "out/extr_phy_lp.c_lpphy_stop_ddfs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@B43_LPPHY_AFE_DDFS = local_unnamed_addr global i32 0
@B43_LPPHY_LP_PHY_CTL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"b43_wldev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @b43_phy_mask(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @lpphy_stop_ddfs(ptr %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %B43_LPPHY_AFE_DDFS = load i32, ptr @B43_LPPHY_AFE_DDFS, align 4
  %0 = tail call addrspace(1) i32 @b43_phy_mask(ptr %dev, i32 %B43_LPPHY_AFE_DDFS, i32 65533)
  %B43_LPPHY_LP_PHY_CTL = load i32, ptr @B43_LPPHY_LP_PHY_CTL, align 4
  %1 = tail call addrspace(1) i32 @b43_phy_mask(ptr %dev, i32 %B43_LPPHY_LP_PHY_CTL, i32 65503)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
