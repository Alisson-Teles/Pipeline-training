; ModuleID = 'angha-ll-stm32f1/extr_ampdu.c_brcms_c_ampdu_flush.ll'
source_filename = "out/extr_ampdu.c_brcms_c_ampdu_flush.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@dma_cb_fn_ampdu = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ieee80211_sta:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"brcms_c_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @brcms_c_inval_dma_pkts(i32, ptr, i32) local_unnamed_addr addrspace(1) #1

define void @brcms_c_ampdu_flush(ptr readonly captures(none) %wlc, ptr %sta, i32 %tid) local_unnamed_addr addrspace(1) #1 {
body:
  %hw4 = load i32, ptr %wlc, align 4
  %dma_cb_fn_ampdu = load i32, ptr @dma_cb_fn_ampdu, align 4
  %0 = tail call addrspace(1) i32 @brcms_c_inval_dma_pkts(i32 %hw4, ptr %sta, i32 %dma_cb_fn_ampdu)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
