; ModuleID = 'angha-ll-stm32f1/extr_viddc.c_VIDDCVdp2SetPriorityRBG0.ll'
source_filename = "out/extr_viddc.c_VIDDCVdp2SetPriorityRBG0.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@rbg0priority = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @VIDDCVdp2SetPriorityRBG0(i32 %priority) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 %priority, ptr @rbg0priority, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
