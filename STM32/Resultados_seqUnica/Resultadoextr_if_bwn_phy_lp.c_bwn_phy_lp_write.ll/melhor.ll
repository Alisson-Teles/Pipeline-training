; ModuleID = 'angha-ll-stm32f1/extr_if_bwn_phy_lp.c_bwn_phy_lp_write.ll'
source_filename = "out/extr_if_bwn_phy_lp.c_bwn_phy_lp_write.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BWN_PHYCTL = local_unnamed_addr global i32 0
@BWN_PHYDATA = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bwn_mac:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BWN_WRITE_2(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @bwn_phy_lp_write(ptr %mac, i32 %reg, i32 %value) local_unnamed_addr addrspace(1) #1 {
body:
  %BWN_PHYCTL = load i32, ptr @BWN_PHYCTL, align 4
  %0 = tail call addrspace(1) i32 @BWN_WRITE_2(ptr %mac, i32 %BWN_PHYCTL, i32 %reg)
  %BWN_PHYDATA = load i32, ptr @BWN_PHYDATA, align 4
  %1 = tail call addrspace(1) i32 @BWN_WRITE_2(ptr %mac, i32 %BWN_PHYDATA, i32 %value)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
