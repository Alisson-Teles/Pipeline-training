; ModuleID = 'angha-ll-stm32f1/extr_bhnd_ehci.c_bhnd_ehci_post_reset.ll'
source_filename = "out/extr_bhnd_ehci.c_bhnd_ehci_post_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EHCI_UM_CM = local_unnamed_addr global i32 0
@EHCI_UM_CM_HOST = local_unnamed_addr global i32 0
@EHCI_USBMODE_NOLPM = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ehci_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @EOREAD4(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @EOWRITE4(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @bhnd_ehci_post_reset(ptr %ehci_softc) local_unnamed_addr addrspace(1) #1 {
body:
  %EHCI_USBMODE_NOLPM = load i32, ptr @EHCI_USBMODE_NOLPM, align 4
  %0 = tail call addrspace(1) i32 @EOREAD4(ptr %ehci_softc, i32 %EHCI_USBMODE_NOLPM)
  %EHCI_UM_CM = load i32, ptr @EHCI_UM_CM, align 4
  %neg = xor i32 %EHCI_UM_CM, -1
  %binop = and i32 %0, %neg
  %EHCI_UM_CM_HOST = load i32, ptr @EHCI_UM_CM_HOST, align 4
  %binop3 = or i32 %binop, %EHCI_UM_CM_HOST
  %EHCI_USBMODE_NOLPM5 = load i32, ptr @EHCI_USBMODE_NOLPM, align 4
  %1 = tail call addrspace(1) i32 @EOWRITE4(ptr %ehci_softc, i32 %EHCI_USBMODE_NOLPM5, i32 %binop3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
