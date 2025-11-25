; ModuleID = 'angha-ll-stm32f1/extr_dce_link_encoder.c_configure_encoder.ll'
source_filename = "out/extr_dce_link_encoder.c_configure_encoder.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DPHY_SCRAMBLER_ADVANCE = local_unnamed_addr global i32 0
@DP_CONFIG = local_unnamed_addr global i32 0
@DP_DPHY_SCRAM_CNTL = local_unnamed_addr global i32 0
@DP_UDI_LANES = local_unnamed_addr global i32 0
@LANE_COUNT_ONE = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dce110_link_encoder:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dc_link_settings:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @REG_SET(i32, i32, i32, i64) local_unnamed_addr addrspace(1) #1

declare i32 @REG_UPDATE(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @configure_encoder(ptr readnone captures(none) %enc110, ptr readonly captures(none) %link_settings) local_unnamed_addr addrspace(1) #1 {
body:
  %DP_CONFIG = load i32, ptr @DP_CONFIG, align 4
  %DP_UDI_LANES = load i32, ptr @DP_UDI_LANES, align 4
  %lane_count3 = load i64, ptr %link_settings, align 8
  %LANE_COUNT_ONE = load i64, ptr @LANE_COUNT_ONE, align 8
  %binop = sub i64 %lane_count3, %LANE_COUNT_ONE
  %0 = tail call addrspace(1) i32 @REG_SET(i32 %DP_CONFIG, i32 0, i32 %DP_UDI_LANES, i64 %binop)
  %DP_DPHY_SCRAM_CNTL = load i32, ptr @DP_DPHY_SCRAM_CNTL, align 4
  %DPHY_SCRAMBLER_ADVANCE = load i32, ptr @DPHY_SCRAMBLER_ADVANCE, align 4
  %1 = tail call addrspace(1) i32 @REG_UPDATE(i32 %DP_DPHY_SCRAM_CNTL, i32 %DPHY_SCRAMBLER_ADVANCE, i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
