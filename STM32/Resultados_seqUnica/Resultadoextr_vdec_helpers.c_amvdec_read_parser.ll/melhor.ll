; ModuleID = 'angha-ll-stm32f1/extr_vdec_helpers.c_amvdec_read_parser.ll'
source_filename = "out/extr_vdec_helpers.c_amvdec_read_parser.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amvdec_core:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @readl_relaxed(i64) local_unnamed_addr addrspace(1) #1

define i64 @amvdec_read_parser(ptr readonly captures(none) %core, i64 %reg) local_unnamed_addr addrspace(1) #1 {
body:
  %esparser_base3 = load i64, ptr %core, align 8
  %binop = add i64 %esparser_base3, %reg
  %0 = tail call addrspace(1) i64 @readl_relaxed(i64 %binop)
  ret i64 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
