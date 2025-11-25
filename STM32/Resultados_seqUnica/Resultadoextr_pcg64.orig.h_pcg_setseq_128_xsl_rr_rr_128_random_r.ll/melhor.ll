; ModuleID = 'angha-ll-stm32f1/extr_pcg64.orig.h_pcg_setseq_128_xsl_rr_rr_128_random_r.ll'
source_filename = "out/extr_pcg64.orig.h_pcg_setseq_128_xsl_rr_rr_128_random_r.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pcg_state_setseq_128:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @pcg_output_xsl_rr_rr_128_128(i32) local_unnamed_addr addrspace(1) #1

declare i32 @pcg_setseq_128_step_r(ptr) local_unnamed_addr addrspace(1) #1

define i32 @pcg_setseq_128_xsl_rr_rr_128_random_r(ptr %rng) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @pcg_setseq_128_step_r(ptr %rng)
  %state3 = load i32, ptr %rng, align 4
  %1 = tail call addrspace(1) i32 @pcg_output_xsl_rr_rr_128_128(i32 %state3)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
