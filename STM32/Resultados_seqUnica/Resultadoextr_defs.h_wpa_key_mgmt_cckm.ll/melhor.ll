; ModuleID = 'angha-ll-stm32f1/extr_defs.h_wpa_key_mgmt_cckm.ll'
source_filename = "out/extr_defs.h_wpa_key_mgmt_cckm.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@WPA_KEY_MGMT_CCKM = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define range(i32 0, 2) i32 @wpa_key_mgmt_cckm(i32 %akm) local_unnamed_addr addrspace(1) #0 {
body:
  %WPA_KEY_MGMT_CCKM = load i32, ptr @WPA_KEY_MGMT_CCKM, align 4
  %cmpi = icmp eq i32 %akm, %WPA_KEY_MGMT_CCKM
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
