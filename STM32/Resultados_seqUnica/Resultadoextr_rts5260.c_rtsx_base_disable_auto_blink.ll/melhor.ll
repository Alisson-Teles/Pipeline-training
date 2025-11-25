; ModuleID = 'angha-ll-stm32f1/extr_rts5260.c_rtsx_base_disable_auto_blink.ll'
source_filename = "out/extr_rts5260.c_rtsx_base_disable_auto_blink.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LED_SHINE_DISABLE = local_unnamed_addr global i32 0
@LED_SHINE_MASK = local_unnamed_addr global i32 0
@OLT_LED_CTL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rtsx_pcr:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @rtsx_pci_write_register(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @rtsx_base_disable_auto_blink(ptr %pcr) local_unnamed_addr addrspace(1) #1 {
body:
  %OLT_LED_CTL = load i32, ptr @OLT_LED_CTL, align 4
  %LED_SHINE_MASK = load i32, ptr @LED_SHINE_MASK, align 4
  %LED_SHINE_DISABLE = load i32, ptr @LED_SHINE_DISABLE, align 4
  %0 = tail call addrspace(1) i32 @rtsx_pci_write_register(ptr %pcr, i32 %OLT_LED_CTL, i32 %LED_SHINE_MASK, i32 %LED_SHINE_DISABLE)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
