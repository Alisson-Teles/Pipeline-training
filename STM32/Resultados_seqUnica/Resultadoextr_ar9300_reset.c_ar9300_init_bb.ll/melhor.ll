; ModuleID = 'angha-ll-stm32f1/extr_ar9300_reset.c_ar9300_init_bb.ll'
source_filename = "out/extr_ar9300_reset.c_ar9300_init_bb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AR_PHY_ACTIVE = local_unnamed_addr global i32 0
@AR_PHY_ACTIVE_EN = local_unnamed_addr global i32 0
@AR_PHY_RX_DELAY = local_unnamed_addr global i32 0
@AR_PHY_RX_DELAY_DELAY = local_unnamed_addr global i32 0
@BASE_ACTIVATE_DELAY = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ieee80211_channel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath_hal:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @IEEE80211_IS_CHAN_CCK(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @OS_DELAY(i64) local_unnamed_addr addrspace(1) #1

declare i32 @OS_REG_READ(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @OS_REG_WRITE(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @ar9300_init_bb(ptr %ah, ptr %chan) local_unnamed_addr addrspace(1) #1 {
body:
  %AR_PHY_RX_DELAY = load i32, ptr @AR_PHY_RX_DELAY, align 4
  %0 = tail call addrspace(1) i32 @OS_REG_READ(ptr %ah, i32 %AR_PHY_RX_DELAY)
  %AR_PHY_RX_DELAY_DELAY = load i32, ptr @AR_PHY_RX_DELAY_DELAY, align 4
  %binop = and i32 %AR_PHY_RX_DELAY_DELAY, %0
  %1 = tail call addrspace(1) i64 @IEEE80211_IS_CHAN_CCK(ptr %chan)
  %cmpi.not = icmp eq i64 %1, 0
  %binop5 = shl i32 %binop, 2
  %binop6 = sdiv i32 %binop5, 22
  %binop7 = sdiv i32 %binop, 10
  %synth_delay.0 = select i1 %cmpi.not, i32 %binop7, i32 %binop6
  %AR_PHY_ACTIVE = load i32, ptr @AR_PHY_ACTIVE, align 4
  %AR_PHY_ACTIVE_EN = load i32, ptr @AR_PHY_ACTIVE_EN, align 4
  %2 = tail call addrspace(1) i32 @OS_REG_WRITE(ptr %ah, i32 %AR_PHY_ACTIVE, i32 %AR_PHY_ACTIVE_EN)
  %intcast = sext i32 %synth_delay.0 to i64
  %BASE_ACTIVATE_DELAY = load i64, ptr @BASE_ACTIVATE_DELAY, align 8
  %binop10 = add i64 %BASE_ACTIVATE_DELAY, %intcast
  %3 = tail call addrspace(1) i32 @OS_DELAY(i64 %binop10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
