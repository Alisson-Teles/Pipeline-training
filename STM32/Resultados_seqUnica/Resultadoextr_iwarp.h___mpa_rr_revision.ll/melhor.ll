; ModuleID = 'angha-ll-stm32f1/extr_iwarp.h___mpa_rr_revision.ll'
source_filename = "out/extr_iwarp.h___mpa_rr_revision.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MPA_RR_MASK_REVISION = local_unnamed_addr global i32 0

declare i32 @be16_to_cpu(i32) local_unnamed_addr addrspace(1) #0

define i32 @__mpa_rr_revision(i32 %mpa_rr_bits) local_unnamed_addr addrspace(1) #0 {
body:
  %MPA_RR_MASK_REVISION = load i32, ptr @MPA_RR_MASK_REVISION, align 4
  %binop = and i32 %MPA_RR_MASK_REVISION, %mpa_rr_bits
  %0 = tail call addrspace(1) i32 @be16_to_cpu(i32 %binop)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
