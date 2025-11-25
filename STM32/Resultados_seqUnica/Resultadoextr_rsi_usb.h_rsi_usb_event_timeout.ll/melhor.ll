; ModuleID = 'angha-ll-stm32f1/extr_rsi_usb.h_rsi_usb_event_timeout.ll'
source_filename = "out/extr_rsi_usb.h_rsi_usb_event_timeout.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EVENT_WAIT_FOREVER = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rsi_hw:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @rsi_usb_event_timeout(ptr readnone captures(none) %adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %EVENT_WAIT_FOREVER = load i32, ptr @EVENT_WAIT_FOREVER, align 4
  ret i32 %EVENT_WAIT_FOREVER
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
