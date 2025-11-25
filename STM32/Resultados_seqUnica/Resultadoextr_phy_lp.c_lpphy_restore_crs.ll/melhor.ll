; ModuleID = 'angha-ll-stm32f1/extr_phy_lp.c_lpphy_restore_crs.ll'
source_filename = "out/extr_phy_lp.c_lpphy_restore_crs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@B43_LPPHY_RF_OVERRIDE_0 = local_unnamed_addr global i32 0
@B43_LPPHY_RF_OVERRIDE_2 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"b43_wldev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @b43_phy_mask(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @lpphy_clear_deaf(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @lpphy_restore_crs(ptr %dev, i32 %user) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @lpphy_clear_deaf(ptr %dev, i32 %user)
  %B43_LPPHY_RF_OVERRIDE_0 = load i32, ptr @B43_LPPHY_RF_OVERRIDE_0, align 4
  %1 = tail call addrspace(1) i32 @b43_phy_mask(ptr %dev, i32 %B43_LPPHY_RF_OVERRIDE_0, i32 65408)
  %B43_LPPHY_RF_OVERRIDE_2 = load i32, ptr @B43_LPPHY_RF_OVERRIDE_2, align 4
  %2 = tail call addrspace(1) i32 @b43_phy_mask(ptr %dev, i32 %B43_LPPHY_RF_OVERRIDE_2, i32 64512)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
