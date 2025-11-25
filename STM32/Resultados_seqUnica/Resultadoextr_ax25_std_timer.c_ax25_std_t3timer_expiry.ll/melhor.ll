; ModuleID = 'angha-ll-stm32f1/extr_ax25_std_timer.c_ax25_std_t3timer_expiry.ll'
source_filename = "out/extr_ax25_std_timer.c_ax25_std_t3timer_expiry.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AX25_STATE_4 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepn2count = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepn2count, align 8
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ax25_std_transmit_enquiry(ptr) local_unnamed_addr addrspace(1) #1

define void @ax25_std_t3timer_expiry(ptr initializes((8, 16)) %ax25) local_unnamed_addr addrspace(1) #1 {
body:
  %n2count = getelementptr inbounds nuw i8, ptr %ax25, i32 8
  store i64 0, ptr %n2count, align 8
  %0 = tail call addrspace(1) i32 @ax25_std_transmit_enquiry(ptr %ax25)
  %AX25_STATE_4 = load i32, ptr @AX25_STATE_4, align 4
  store i32 %AX25_STATE_4, ptr %ax25, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
