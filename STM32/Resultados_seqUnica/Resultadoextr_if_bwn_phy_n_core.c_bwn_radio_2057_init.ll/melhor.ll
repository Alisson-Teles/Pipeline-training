; ModuleID = 'angha-ll-stm32f1/extr_if_bwn_phy_n_core.c_bwn_radio_2057_init.ll'
source_filename = "out/extr_if_bwn_phy_n_core.c_bwn_radio_2057_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bwn_mac:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bwn_radio_2057_init_post(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @bwn_radio_2057_init_pre(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @r2057_upload_inittabs(ptr) local_unnamed_addr addrspace(1) #1

define void @bwn_radio_2057_init(ptr %mac) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @bwn_radio_2057_init_pre(ptr %mac)
  %1 = tail call addrspace(1) i32 @r2057_upload_inittabs(ptr %mac)
  %2 = tail call addrspace(1) i32 @bwn_radio_2057_init_post(ptr %mac)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
