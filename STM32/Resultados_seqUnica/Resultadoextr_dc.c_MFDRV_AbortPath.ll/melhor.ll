; ModuleID = 'angha-ll-stm32f1/extr_dc.c_MFDRV_AbortPath.ll'
source_filename = "out/extr_dc.c_MFDRV_AbortPath.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FALSE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @MFDRV_AbortPath(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %FALSE = load i32, ptr @FALSE, align 4
  ret i32 %FALSE
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
