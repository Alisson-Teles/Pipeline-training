; ModuleID = 'angha-ll-stm32f1/extr_ar5210_misc.c_ar5210GetAckTimeout.ll'
source_filename = "out/extr_ar5210_misc.c_ar5210GetAckTimeout.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AR_TIME_OUT = local_unnamed_addr global i32 0
@AR_TIME_OUT_ACK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath_hal:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MS(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @OS_REG_READ(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ath_hal_mac_usec(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @ar5210GetAckTimeout(ptr %ah) local_unnamed_addr addrspace(1) #1 {
body:
  %AR_TIME_OUT = load i32, ptr @AR_TIME_OUT, align 4
  %0 = tail call addrspace(1) i32 @OS_REG_READ(ptr %ah, i32 %AR_TIME_OUT)
  %AR_TIME_OUT_ACK = load i32, ptr @AR_TIME_OUT_ACK, align 4
  %1 = tail call addrspace(1) i32 @MS(i32 %0, i32 %AR_TIME_OUT_ACK)
  %2 = tail call addrspace(1) i32 @ath_hal_mac_usec(ptr %ah, i32 %1)
  ret i32 %2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
