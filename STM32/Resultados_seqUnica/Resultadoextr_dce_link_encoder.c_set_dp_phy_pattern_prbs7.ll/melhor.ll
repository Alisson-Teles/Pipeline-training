; ModuleID = 'angha-ll-stm32f1/extr_dce_link_encoder.c_set_dp_phy_pattern_prbs7.ll'
source_filename = "out/extr_dce_link_encoder.c_set_dp_phy_pattern_prbs7.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DPHY_PRBS_EN = local_unnamed_addr global i32 0
@DPHY_PRBS_SEL = local_unnamed_addr global i32 0
@DP_DPHY_PRBS_CNTL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dce110_link_encoder:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @disable_prbs_symbols(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @enable_phy_bypass_mode(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @set_dp_phy_pattern_prbs7(ptr %enc110) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @enable_phy_bypass_mode(ptr %enc110, i32 0)
  %1 = tail call addrspace(1) i32 @disable_prbs_symbols(ptr %enc110, i32 0)
  %DP_DPHY_PRBS_CNTL = load i32, ptr @DP_DPHY_PRBS_CNTL, align 4
  %DPHY_PRBS_SEL = load i32, ptr @DPHY_PRBS_SEL, align 4
  %DPHY_PRBS_EN = load i32, ptr @DPHY_PRBS_EN, align 4
  %2 = tail call addrspace(1) i32 @REG_UPDATE_2(i32 %DP_DPHY_PRBS_CNTL, i32 %DPHY_PRBS_SEL, i32 0, i32 %DPHY_PRBS_EN, i32 1)
  %3 = tail call addrspace(1) i32 @enable_phy_bypass_mode(ptr %enc110, i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
