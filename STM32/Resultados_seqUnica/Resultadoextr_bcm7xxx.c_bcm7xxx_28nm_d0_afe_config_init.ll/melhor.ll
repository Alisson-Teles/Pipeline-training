; ModuleID = 'angha-ll-stm32f1/extr_bcm7xxx.c_bcm7xxx_28nm_d0_afe_config_init.ll'
source_filename = "out/extr_bcm7xxx.c_bcm7xxx_28nm_d0_afe_config_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AFE_HPF_TRIM_OTHERS = local_unnamed_addr global i32 0
@AFE_RXCONFIG_0 = local_unnamed_addr global i32 0
@AFE_RXCONFIG_1 = local_unnamed_addr global i32 0
@AFE_RXCONFIG_2 = local_unnamed_addr global i32 0
@AFE_RX_LP_COUNTER = local_unnamed_addr global i32 0
@AFE_TX_CONFIG = local_unnamed_addr global i32 0
@AFE_VDAC_OTHERS_0 = local_unnamed_addr global i32 0
@AFE_VDCA_ICTRL_0 = local_unnamed_addr global i32 0
@DSP_TAP10 = local_unnamed_addr global i32 0
@MII_BRCM_CORE_BASE1E = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"phy_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bcm_phy_r_rc_cal_reset(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @bcm_phy_write_misc(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @phy_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @bcm7xxx_28nm_d0_afe_config_init(ptr %phydev) local_unnamed_addr addrspace(1) #1 {
body:
  %AFE_RXCONFIG_0 = load i32, ptr @AFE_RXCONFIG_0, align 4
  %0 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_RXCONFIG_0, i32 60181)
  %AFE_RXCONFIG_1 = load i32, ptr @AFE_RXCONFIG_1, align 4
  %1 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_RXCONFIG_1, i32 39727)
  %AFE_RXCONFIG_2 = load i32, ptr @AFE_RXCONFIG_2, align 4
  %2 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_RXCONFIG_2, i32 8195)
  %AFE_RX_LP_COUNTER = load i32, ptr @AFE_RX_LP_COUNTER, align 4
  %3 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_RX_LP_COUNTER, i32 32704)
  %AFE_TX_CONFIG = load i32, ptr @AFE_TX_CONFIG, align 4
  %4 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_TX_CONFIG, i32 1073)
  %AFE_VDCA_ICTRL_0 = load i32, ptr @AFE_VDCA_ICTRL_0, align 4
  %5 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_VDCA_ICTRL_0, i32 42970)
  %AFE_VDAC_OTHERS_0 = load i32, ptr @AFE_VDAC_OTHERS_0, align 4
  %6 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_VDAC_OTHERS_0, i32 40992)
  %AFE_HPF_TRIM_OTHERS = load i32, ptr @AFE_HPF_TRIM_OTHERS, align 4
  %7 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %AFE_HPF_TRIM_OTHERS, i32 227)
  %MII_BRCM_CORE_BASE1E = load i32, ptr @MII_BRCM_CORE_BASE1E, align 4
  %8 = tail call addrspace(1) i32 @phy_write(ptr %phydev, i32 %MII_BRCM_CORE_BASE1E, i32 16)
  %DSP_TAP10 = load i32, ptr @DSP_TAP10, align 4
  %9 = tail call addrspace(1) i32 @bcm_phy_write_misc(ptr %phydev, i32 %DSP_TAP10, i32 283)
  %10 = tail call addrspace(1) i32 @bcm_phy_r_rc_cal_reset(ptr %phydev)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
