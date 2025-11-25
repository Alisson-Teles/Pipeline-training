; ModuleID = 'angha-ll-stm32f1/extr_hn_nvs.c_hn_nvs_send_rndis_ctrl.ll'
source_filename = "out/extr_hn_nvs.c_hn_nvs_send_rndis_ctrl.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@HN_NVS_RNDIS_MTYPE_CTRL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vmbus_gpa:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vmbus_channel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hn_nvs_sendctx:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @hn_nvs_send_rndis_sglist(ptr, i32, ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @hn_nvs_send_rndis_ctrl(ptr %chan, ptr %sndc, ptr %gpa, i32 %gpa_cnt) local_unnamed_addr addrspace(1) #1 {
body:
  %HN_NVS_RNDIS_MTYPE_CTRL = load i32, ptr @HN_NVS_RNDIS_MTYPE_CTRL, align 4
  %0 = tail call addrspace(1) i32 @hn_nvs_send_rndis_sglist(ptr %chan, i32 %HN_NVS_RNDIS_MTYPE_CTRL, ptr %sndc, ptr %gpa, i32 %gpa_cnt)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
