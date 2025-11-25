; ModuleID = 'angha-ll-stm32f1/extr_if_iwm_led.c_iwm_mvm_led_is_enabled.ll'
source_filename = "out/extr_if_iwm_led.c_iwm_mvm_led_is_enabled.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IWM_CSR_LED_REG = local_unnamed_addr global i32 0
@IWM_CSR_LED_REG_TURN_ON = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"iwm_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @IWM_READ(ptr, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @iwm_mvm_led_is_enabled(ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %IWM_CSR_LED_REG = load i32, ptr @IWM_CSR_LED_REG, align 4
  %0 = tail call addrspace(1) i64 @IWM_READ(ptr %sc, i32 %IWM_CSR_LED_REG)
  %IWM_CSR_LED_REG_TURN_ON = load i64, ptr @IWM_CSR_LED_REG_TURN_ON, align 8
  %cmpi = icmp eq i64 %0, %IWM_CSR_LED_REG_TURN_ON
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
