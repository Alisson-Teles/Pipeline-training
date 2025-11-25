; ModuleID = 'angha-ll-stm32f1/extr_aquantia_main.c_aqr107_suspend.ll'
source_filename = "out/extr_aquantia_main.c_aqr107_suspend.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MDIO_CTRL1 = local_unnamed_addr global i32 0
@MDIO_CTRL1_LPOWER = local_unnamed_addr global i32 0
@MDIO_MMD_VEND1 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"phy_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @phy_set_bits_mmd(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @aqr107_suspend(ptr %phydev) local_unnamed_addr addrspace(1) #1 {
body:
  %MDIO_MMD_VEND1 = load i32, ptr @MDIO_MMD_VEND1, align 4
  %MDIO_CTRL1 = load i32, ptr @MDIO_CTRL1, align 4
  %MDIO_CTRL1_LPOWER = load i32, ptr @MDIO_CTRL1_LPOWER, align 4
  %0 = tail call addrspace(1) i32 @phy_set_bits_mmd(ptr %phydev, i32 %MDIO_MMD_VEND1, i32 %MDIO_CTRL1, i32 %MDIO_CTRL1_LPOWER)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
