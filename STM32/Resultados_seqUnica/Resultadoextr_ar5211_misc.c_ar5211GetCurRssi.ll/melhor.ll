; ModuleID = 'angha-ll-stm32f1/extr_ar5211_misc.c_ar5211GetCurRssi.ll'
source_filename = "out/extr_ar5211_misc.c_ar5211GetCurRssi.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AR_PHY_CURRENT_RSSI = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath_hal:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @OS_REG_READ(ptr, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 256) i32 @ar5211GetCurRssi(ptr %ah) local_unnamed_addr addrspace(1) #1 {
body:
  %AR_PHY_CURRENT_RSSI = load i32, ptr @AR_PHY_CURRENT_RSSI, align 4
  %0 = tail call addrspace(1) i32 @OS_REG_READ(ptr %ah, i32 %AR_PHY_CURRENT_RSSI)
  %binop = and i32 %0, 255
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
