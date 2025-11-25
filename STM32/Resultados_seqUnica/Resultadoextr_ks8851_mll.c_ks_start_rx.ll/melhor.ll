; ModuleID = 'angha-ll-stm32f1/extr_ks8851_mll.c_ks_start_rx.ll'
source_filename = "out/extr_ks8851_mll.c_ks_start_rx.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@KS_RXCR1 = local_unnamed_addr global i32 0
@RXCR1_RXE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ks_net:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ks_rdreg16(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ks_wrreg16(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @ks_start_rx(ptr %ks) local_unnamed_addr addrspace(1) #1 {
body:
  %KS_RXCR1 = load i32, ptr @KS_RXCR1, align 4
  %0 = tail call addrspace(1) i32 @ks_rdreg16(ptr %ks, i32 %KS_RXCR1)
  %RXCR1_RXE = load i32, ptr @RXCR1_RXE, align 4
  %binop = or i32 %RXCR1_RXE, %0
  %KS_RXCR13 = load i32, ptr @KS_RXCR1, align 4
  %1 = tail call addrspace(1) i32 @ks_wrreg16(ptr %ks, i32 %KS_RXCR13, i32 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
