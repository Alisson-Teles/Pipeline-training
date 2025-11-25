; ModuleID = 'angha-ll-stm32f1/extr_phy_cmn.c_wlc_phy_noise_sample_request_external.ll'
source_filename = "out/extr_phy_cmn.c_wlc_phy_noise_sample_request_external.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PHY_NOISE_SAMPLE_EXTERNAL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"brcms_phy_pub:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @CHSPEC_CHANNEL(i32) local_unnamed_addr addrspace(1) #1

declare i32 @wlc_phy_chanspec_get(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @wlc_phy_noise_sample_request(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @wlc_phy_noise_sample_request_external(ptr %pih) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @wlc_phy_chanspec_get(ptr %pih)
  %1 = tail call addrspace(1) i32 @CHSPEC_CHANNEL(i32 %0)
  %PHY_NOISE_SAMPLE_EXTERNAL = load i32, ptr @PHY_NOISE_SAMPLE_EXTERNAL, align 4
  %2 = tail call addrspace(1) i32 @wlc_phy_noise_sample_request(ptr %pih, i32 %PHY_NOISE_SAMPLE_EXTERNAL, i32 %1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
