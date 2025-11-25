; ModuleID = 'angha-ll-stm32f1/extr_aic7xxx_pci.c_ahc_aha2940Pro_setup.ll'
source_filename = "out/extr_aic7xxx_pci.c_ahc_aha2940Pro_setup.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AHC_INT50_SPEEDFLEX = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ahc_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ahc_aic7880_setup(ptr) local_unnamed_addr addrspace(1) #1

define i32 @ahc_aha2940Pro_setup(ptr %ahc) local_unnamed_addr addrspace(1) #1 {
body:
  %loadleftv = load i32, ptr %ahc, align 4
  %AHC_INT50_SPEEDFLEX = load i32, ptr @AHC_INT50_SPEEDFLEX, align 4
  %binop = or i32 %AHC_INT50_SPEEDFLEX, %loadleftv
  store i32 %binop, ptr %ahc, align 4
  %0 = tail call addrspace(1) i32 @ahc_aic7880_setup(ptr nonnull %ahc)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
