; ModuleID = 'angha-ll-stm32f1/extr_if_ath_btcoex.c_ath_btcoex_enable.ll'
source_filename = "out/extr_if_ath_btcoex.c_ath_btcoex_enable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ieee80211_channel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath_softc:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @ath_btcoex_mci_enable(ptr, ptr) local_unnamed_addr addrspace(1) #1

define noundef i32 @ath_btcoex_enable(ptr %sc, ptr %chan) local_unnamed_addr addrspace(1) #1 {
body:
  %sc_btcoex_mci3 = load i64, ptr %sc, align 8
  %cmpi.not = icmp eq i64 %sc_btcoex_mci3, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @ath_btcoex_mci_enable(ptr nonnull %sc, ptr %chan)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
